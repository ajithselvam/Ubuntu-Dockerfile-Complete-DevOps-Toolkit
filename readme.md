# Build the image
docker build -t my-toolkit .

# Run interactively
docker run -it my-toolkit

# Run with volume mount
docker run -it -v $(pwd):/workspace my-toolkit

# Run with network access
docker run -it --network host my-toolkit
