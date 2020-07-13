mkdir build
cd build

cmake -GNinja ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_LIBDIR="%LIBRARY_LIB%" ^
      -DCMAKE_INSTALL_INCLUDEDIR="%LIBRARY_INC%" ^
      -DCMAKE_INSTALL_BINDIR="%LIBRARY_BIN%" ^
      -DCMAKE_INSTALL_DATADIR="%LIBRARY_PREFIX%" ^
      %SRC_DIR%
if errorlevel 1 exit 1

cmake --build . --target install --config Release
if errorlevel 1 exit 1
