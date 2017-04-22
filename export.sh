DIRECTORY=decktape-1.0.0
if [ ! -d "$DIRECTORY" ]; then
    curl -L https://github.com/astefanutti/decktape/archive/v1.0.0.tar.gz | tar -xz --exclude phantomjs
    cd $DIRECTORY
    curl -L https://github.com/astefanutti/decktape/releases/download/v1.0.0/phantomjs-linux-x86-64 -o phantomjs
    chmod +x phantomjs
    cd ..
fi

./decktape-1.0.0/phantomjs ./decktape-1.0.0/decktape.js http://localhost:8080/EGU presentation.pdf
