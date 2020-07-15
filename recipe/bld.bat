mkdir build
cd build

cmake -GNinja ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      %SRC_DIR%
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
