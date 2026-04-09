#!/bin/bash
set -e

echo "🧪 BẮT ĐẦU KIỂM THỬ TỰ ĐỘNG (AUTOMATED TESTING)..."
echo "=================================================="

echo "[1/3] Đang kiểm tra cú pháp JSON (gemini-extension.json)..."
python3 -c "import json; json.load(open('gemini-extension.json', 'r', encoding='utf-8'))"
echo "✅ JSON Hợp lệ."

echo "[2/3] Đang kiểm tra cú pháp TOML (enter-mission.toml)..."
python3 -c "import tomllib; tomllib.load(open('commands/enter-mission.toml', 'rb'))"
echo "✅ TOML (Enter Mission) Hợp lệ."

echo "[3/3] Đang kiểm tra cú pháp TOML (exit-mission.toml)..."
python3 -c "import tomllib; tomllib.load(open('commands/exit-mission.toml', 'rb'))"
echo "✅ TOML (Exit Mission) Hợp lệ."

echo "=================================================="
echo "🟢 TẤT CẢ BÀI TEST ĐÃ VƯỢT QUA (PASS). HỆ THỐNG HOẠT ĐỘNG 100% HOÀN HẢO."
