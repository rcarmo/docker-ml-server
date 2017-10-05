# Microsoft Machine Learning Server Docker Image

An unofficial Docker image for the Microsoft Machine Learning Server, somewhat cleaned up.

## Usage

### Open a console
```bash
docker run -it rcarmo/microsoftml /bin/bash
```

### Use the Machine Learning Server Python command
```bash
docker run -it rcarmo/microsoftml mlserver-python
```

### Opening Jupyter Notebooks
To open a Jupyter notebook, run this on your console:
```bash
docker run -p 8888:8888 -it rcarmo/microsoftml /opt/microsoft/mlserver/9.2.1/runtime/python/bin/jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 --allow-root
```
Then copy the link the command will give you and open it in your browser.

## License
MIT
