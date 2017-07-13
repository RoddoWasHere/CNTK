setlocal

cd "%~dp0\cntk" && ^
pytest --deviceid gpu -k conv && ^
set PYTHONPATH=%CD%;%PYTHONPATH% && ^
pushd ..\..\..\Tests\EndToEndTests\CNTKv2Python\Examples && ^
pytest --deviceid gpu
