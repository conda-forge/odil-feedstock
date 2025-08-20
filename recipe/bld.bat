mkdir build
cd build

cmake ^
  -GNinja ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DCMAKE_CXX_STANDARD=17 ^
  -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF ^
  -DWITH_DCMTK=OFF ^
  -DBUILD_PYTHON_WRAPPERS=ON -DBUILD_JAVASCRIPT_WRAPPERS=OFF ^
  -DCMAKE_INSTALL_PREFIX=%PREFIX% -DPython_EXECUTABLE=%PYTHON% ^
  ../
if errorlevel 1 exit 1

cmake --build . --config Release --target install --parallel
if errorlevel 1 exit 1
