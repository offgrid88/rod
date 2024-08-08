# ROD: ROS 2 On Docker

Welcome to ROD (ROS 2 On Docker), a streamlined environment for developing and testing ROS 2 applications using Docker. This setup allows for easy configuration and deployment of ROS 2 applications across various systems, ensuring consistency in development and testing environments.

## How to Use

### Prerequisites
- Docker and Docker Compose installed on your system.
- `dialog` package for the ncurses menu.

### Setup
1. **Clone the repository**:
   ```bash
   git clone https://github.com/offgrid88/rod
   cd ROD
   ```

2. **Build the Docker environment**:
   ```bash
   ./rod.sh
   ```
   Follow the on-screen instructions to build the Docker environment. 

3. **Run the Docker environment**:
   - After building, you can run the Docker environment directly from the ncurses menu by selecting "Run ROD".

4. **Interact with the Docker container**:
   - Access the interactive shell inside the Docker container through the ncurses menu by selecting "Execute Interactive Shell in ROD".

### Directory Structure
- `src/`: ROS 2 source files and packages.
- `build/`: Build files.
- `install/`: Installation files.
- `log/`: Log files.

## How to Contribute

Contributions are welcome! Here's how you can contribute:

1. **Fork the Repository**:
   - Fork the repository to your GitHub account.

2. **Clone your fork**:
   ```bash
   git clone https://github.com/ROS-Tunisia-Users-Group/rod
   cd ROD
   ```

3. **Create a Feature Branch**:
   ```bash
   git checkout -b your-new-feature
   ```

4. **Make your changes**:
   - Implement your feature or bug fix.

5. **Commit Changes**:
   ```bash
   git commit -am 'Add some feature'
   ```

6. **Push to the Branch**:
   ```bash
   git push origin your-new-feature
   ```

7. **Submit a Pull Request**:
   - Open a pull request from your fork to the main ROD repository.

## TODO

- **Add GPU Support**:
  - [ ] Integrate NVIDIA GPU support.
  - [ ] Integrate AMD GPU support.

- **Enhance Menu Options**:
  - [ ] Add more configuration options to the ROD menu.
  - [ ] Include tools for performance monitoring and debugging.

- **Documentation**:
  - [ ] Improve documentation for setup and usage.
  - [ ] Provide detailed guides for common issues and troubleshooting.
