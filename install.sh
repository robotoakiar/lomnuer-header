#!/bin/bash
# Lomnuer Header System Auto Installer
# Version: 1.2
# Author: Lomnuer Gang

set -e  # Exit on any error

echo "======================================================"
echo "🦉 LOMNUER HEADER SYSTEM AUTO INSTALLER 🦉"
echo "======================================================"
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if vim is installed
check_vim() {
    print_status "Checking if vim is installed..."
    if ! command -v vim &> /dev/null; then
        print_error "Vim is not installed. Please install vim first."
        exit 1
    fi
    print_success "Vim is installed"
}

# Backup existing configuration
backup_config() {
    print_status "Backing up existing vim configuration..."
    
    BACKUP_DIR="$HOME/.vim_backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$BACKUP_DIR"
    
    if [ -f "$HOME/.vimrc" ]; then
        cp "$HOME/.vimrc" "$BACKUP_DIR/vimrc.backup"
        print_success "Backed up existing .vimrc to $BACKUP_DIR"
    fi
    
    # Remove swap files
    rm -f "$HOME/.vimrc.swp" "$HOME/.vimrc.tmp" 2>/dev/null || true
}

# Create vim directories
create_directories() {
    print_status "Creating vim directories..."
    mkdir -p "$HOME/.vim/templates"
    mkdir -p "$HOME/.vim/backup"
    print_success "Created vim directories"
}

# Install vim configuration
install_vimrc() {
    print_status "Installing Lomnuer vim configuration..."
    
    cat > "$HOME/.vimrc" << 'EOF'
" =========================================
" LOMNUER GANG VIM HEADER SYSTEM v2.0
" Auto-installed from GitHub
" =========================================

" Basic Vim Settings
set number
set syntax=on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set incsearch
set encoding=utf-8

" Leader key
let mapleader = ","

" =========================================
" LOMNUER HEADER FUNCTIONS
" =========================================

function! InsertHeaderMedium()
    let filename = expand('%:t')
    let author = 'Lomnuer Gang Member'
    let email = 'lomnuer@gang.dev'
    let created_date = strftime('%Y-%m-%d %H:%M')
    
    call append(0, '/*')
    call append(1, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(2, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(3, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(4, ' * ****************************************************************************************************')
    call append(5, ' * [   ░████████   ░██                                 ░████████                         ░██          ]')
    call append(6, ' * [   ░██    ░██                                      ░██    ░██                                     ]')
    call append(7, ' * [   ░██    ░██  ░██░████████   ░████████  ░███████  ░██    ░██   ░███████  ░██    ░██ ░██ ░███████ ]')
    call append(8, ' * [   ░████████   ░██░██    ░██ ░██    ░██ ░██    ░██ ░████████   ░██    ░██  ░██  ░██  ░██░██    ░██]')
    call append(9, ' * [   ░██     ░██ ░██░██    ░██ ░██    ░██ ░██    ░██ ░██     ░██ ░██    ░██   ░█████   ░██░██       ]')
    call append(10, ' * [   ░██     ░██ ░██░██    ░██ ░██   ░███ ░██    ░██ ░██     ░██ ░██    ░██  ░██  ░██  ░██░██    ░██]')
    call append(11, ' * [   ░█████████  ░██░██    ░██  ░█████░██  ░███████  ░█████████   ░███████  ░██    ░██ ░██ ░███████ ]')
    call append(12, ' * [                                     ░██                                                          ]')
    call append(13, ' * [                               ░███████                                                           ]')
    call append(14, ' * ***************************************************************************************************')
    call append(15, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(16, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(17, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(18, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(19, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(20, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(21, ' * ::::::::::::::::::::*+:::::::::::::::::::::::::::::::::::::::::::::::::::::::::#-:::::::::::::::::::')
    call append(22, ' * ::::::::::::::::::::#@%-:::::::::::::::::::::::::::::::::::::::::::::::::::::+@@=:::::::::::::::::::')
    call append(23, ' * :::::::::::::::::::-%@@@#-::::::::::::::::::-=+*******+=-::::::::::::::::::+%@@@+:::::::::::::::::::')
    call append(24, ' * :::::::::::::::::::-%@@@@@%+::::::::::=#%@@@@@@@@@@@@@@@@@@@%+-:::::::::-#@@@@@@+:::::::::::::::::::')
    call append(25, ' * ::::::::::::::::::::#@@@@@@@@@*=:::+@@@@@@@@@@@@@@@@@@@@@@@@@@@@%-::-+%@@@@@@@@%-:::::::::::::::::::')
    call append(26, ' * ::::::::::::::::::::-@@@@@@@@@@@@%#+=#@@@@@@@@@@@@@@@@@@@@@@@@%*+*#@@@@@@@@@@@@*::::::::::::::::::::')
    call append(27, ' * :::::::::::::::::::::-@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#:::::::::::::::::::::')
    call append(28, ' * ::::::::::::::::::::::-%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@+::::::::::::::::::::::')
    call append(29, ' * ::::::::::::::::::::::::=#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%+::::::::::::::::::::::::')
    call append(30, ' * :::::::::::::::::::::::::::-*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#=:::::::::::::::::::::::::::')
    call append(31, ' * ::::::::::::::::::::::-%@@%+--:::=*#%%%@@@@@@@@@@@@@@@@@@@@@@%%%#*=::::-+#@@@=::::::::::::::::::::::')
    call append(32, ' * ::::::::::::::::::::::=@@@@@@@@@%#*+=--::::---========---:::::-=+**#@@@@@@@@@*::::::::::::::::::::::')
    call append(33, ' * ::::::::::::::::::::::*@@@@@@@@@@@@@@@@@@@@@@%%%%%%%%%%@@@@@@@@@@@@@@@@@@@@@@%::::::::::::::::::::::')
    call append(34, ' * ::::::::::::::::::::::#@@@@@@*-#%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%==@@@@@@@-:::::::::::::::::::::')
    call append(35, ' * ::::::::::::::::::::::%@@@@@@*:::-+%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*-:::=@@@@@@@=:::::::::::::::::::::')
    call append(36, ' * ::::::::::::::::::::::@@@@@@@%-::::@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=::::#@@@@@@@+:::::::::::::::::::::')
    call append(37, ' * ::::::::::::::::::::::@@@@@@@@*::::+@@@@==#@@@@@@@@@@@@@@#=-%@@@#::::+@@@@@@@@+:::::::::::::::::::::')
    call append(38, ' * ::::::::::::::::::::::#@@@@@@@@#-::::-=::::+%@@@@@@@@@@@+::::--:::::*@@@@@@@@@-:::::::::::::::::::::')
    call append(39, ' * :::::::::::::::::::::::=%@@@@@@@@%+:::::=#@@@@@@@@@@@@@@@@#+:::::=#@@@@@@@@@+:::::::::::::::::::::::')
    call append(40, ' * :::::::::::::::::::::+@+::+%@@@@@@@@@@@@@@@@@%=::::::-#@@@@@@@@@@@@@@@@@%*::-%#:::::::::::::::::::::')
    call append(41, ' * :::::::::::::::::::::%@@%+-::-+#%@@@@@@@%#*=:::+%@@@*:::-+#%@@@@@@@%#*=:::=%@@@-::::::::::::::::::::')
    call append(42, ' * :::::::::::::::::::::@@@@@@%*::::::::::::::::-%@@@@@@@=::::::::::::::::=%@@@@@@=::::::::::::::::::::')
    call append(43, ' * :::::::::::::::::::::@@@@@@@@@@#-::::::::::::-@@@@@@@@=::::::::::::-*@@@@@@@@@@=::::::::::::::::::::')
    call append(44, ' * :::::::::::::::::::::@@@@@@@@@@@@@%*-::::::::::#@@@@%-:::::::::-+#@@@@@@@@@@@@@=::::::::::::::::::::')
    call append(45, ' * :::::::::::::::::::::%@@@@@@@@@@@@@@@@#=::::::::*@@%-:::::::-*%@@@@@@@@@@@@@@@@-::::::::::::::::::::')
    call append(46, ' * :::::::::::::::::::::*@@@@@@@@@@@@@@@@@@@*:::::::+#:::::::+@@@@@@@@@@@@@@@@@@@%:::::::::::::::::::::')
    call append(47, ' * ::::::::::::::::::::::@@@@@@@@@#+@@@@@@@@@@#-:::::::::::*@@@@@@@@@@%+@@@@@@@@@+:::::::::::::::::::::')
    call append(48, ' * ::::::::::::::::::::::+@@@@@@@@#:%@@@@@@@@@@@*::::::::+@@@@@@@@@@@@=+@@@@@@@@%::::::::::::::::::::::')
    call append(49, ' * ::::::::::::::::::::::-#@@@@@@@@:+@@@@@@@@@@@@@=:::::%@@@@@@@@@@@@#:*@@@@@@@@=::::::::::::::::::::::')
    call append(50, ' * :::::::::::::::::::::::=%@@@@@@@=-#@@@@*@@@@@@@@+::=%@@@@@@@#%@@@@=:%@@@@@@@+:::::::::::::::::::::::')
    call append(51, ' * ::::::::::::::::::::::::-@@@@@@@#:+@@@@%-#@@@@@@@*=@@@@@@@%=*@@@@#:+@@@@@@@*::::::::::::::::::::::::')
    call append(52, ' * :::::::::::::::::::::::::-%@@@@@@=:%@@@@#--%@@@@@@@@@@@@@+:*@@@@@=:%@@@@@@=:::::::::::::::::::::::::')
    call append(53, ' * ::::::::::::::::::::::::::-#@@@@@#:-@@@@@@+:-#@@@@@@@@%=:=%@@@@@*:+@@@@@%=::::::::::::::::::::::::::')
    call append(54, ' * ::::::::::::::::::::::::::::=@@@@@+:=@@@@@@@*::+@@@@*-:+%@@@@@@*:-%@@@@*::::::::::::::::::::::::::::')
    call append(55, ' * ::::::::::::::::::::::::::::::*@@@@-:+@@@@@@@@#::%%=:*@@@@@@@@#::%@@@#-:::::::::::::::::::::::::::::')
    call append(56, ' * :::::::::::::::::::::::::::::::-#@@@=:+@@@@@@@@@*:-+@@@@@@@@@#:-%@@%=:::::::::::::::::::::::::::::::')
    call append(57, ' * :::::::::::::::::::::::::::::::::-*@@+:-%@@@@@@@@%#@@@@@@@@@+:-%@#-:::::::::::::::::::::::::::::::::')
    call append(58, ' * ::::::::::::::::::::::::::::::::::::-##::*@@@@@@@@@@@@@@@@#-:+%+::::::::::::::::::::::::::::::::::::')
    call append(59, ' * :::::::::::::::::::::::::::::::::::::::-::-#@@@@@@@@@@@@%=::-:::::::::::::::::::::::::::::::::::::::')
    call append(60, ' * ::::::::::::::::::::::::::::::::::::::::::::-#@@@@@@@@%=::::::::::::::::::::::::::::::::::::::::::::')
    call append(61, ' * :::::::::::::::::::::::::::::::::::::::::::::::+@@@@#:::::::::::::::::::::::::::::::::::::::::::::::')
    call append(62, ' * :::::::::::::::::::::::::::::::::::::::::::::::::-=:::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(63, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(64, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(65, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(66, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(67, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(68, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(69, ' * ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::')
    call append(70, ' * ════════════════════════════════════════════════════════════════════════════════════════════════════')
    call append(71, ' * ║ 📁 FILE: ' . filename . ' | 📂 PATH: ' . expand('%:p:h'))
    call append(72, ' * ║ 👤 AUTHOR: ' . author . ' | 📧 EMAIL: ' . email)
    call append(73, ' * ║ 📅 CREATED: ' . created_date . ' | 🔄 UPDATED: ' . created_date)
    call append(74, ' * ║ 🖥️  SYSTEM: ' . $USER . '@' . hostname() . ' | 💻 OS: ' . $OSTYPE)
    call append(75, ' * ║                                                                                                  ║')
    call append(76, ' * ║ 📝 DESCRIPTION: ')
    call append(77, ' * ║ 🎯 PURPOSE: ')
    call append(78, ' * ║ 🏷️  TAGS: ')
    call append(79, ' * ║                                                                                                  ║')
    call append(80, ' * ║ 🔥 VER: 1.0.0 | ⚡ STATUS: Development | 📜 LICENSE: MIT')
    call append(81, ' * ║ 🧠 COMPLEXITY: [ ] Low [ ] Med [ ] High | 📈 PRIORITY: [ ] Low [ ] High')
    call append(82, ' * ║ ⚠️  TODO: ')
    call append(83, ' * ║ 💡 NOTES: ')
    call append(84, ' * ════════════════════════════════════════════════════════════════════════════════════════════════════')
    call append(85, ' */')
    call append(86, '')
    
    call cursor(76, 20)
    startinsert!
endfunction

" Function อัพเดทเวลาอัตโนมัติ
function! UpdateHeaderTime()
    let current_time = strftime('%Y-%m-%d %H:%M')
    let line_num = search('🔄 UPDATED:', 'n')
    
    if line_num > 0
        let old_line = getline(line_num)
        let new_line = substitute(old_line, '🔄 UPDATED: [^|]*', '🔄 UPDATED: ' . current_time, '')
        call setline(line_num, new_line)
        echo "Header updated at " . current_time
    endif
endfunction

" =========================================
" AUTO COMMANDS
" =========================================

augroup LomnuerHeader
    autocmd!
    autocmd BufWritePre *.c,*.cpp,*.h,*.hpp,*.js,*.py,*.php,*.java call UpdateHeaderTime()
augroup END

" =========================================
" KEYBOARD SHORTCUTS
" =========================================

nnoremap <leader>h :call InsertHeaderMedium()<CR>
nnoremap <F2> :call InsertHeaderMedium()<CR>
inoremap <F2> <Esc>:call InsertHeaderMedium()<CR>
nnoremap <leader>u :call UpdateHeaderTime()<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :wq<CR>
nnoremap <leader>/ :noh<CR>

" =========================================
" END OF CONFIG
" =========================================
EOF

    print_success "Installed vim configuration"
}

# Test installation
test_installation() {
    print_status "Testing installation..."
    
    # Test if vim can load the config without errors
    if vim -c 'source ~/.vimrc' -c 'q' &>/dev/null; then
        print_success "Vim configuration loads successfully"
    else
        print_error "There was an error loading the vim configuration"
        exit 1
    fi
}

# Show usage instructions
show_instructions() {
    echo ""
    echo "======================================================"
    echo "🎉 INSTALLATION COMPLETED SUCCESSFULLY! 🎉"
    echo "======================================================"
    echo ""
    echo "Usage Instructions:"
    echo "===================="
    echo ""
    echo "1. Create a new file: vim example.c"
    echo "2. Press F2 or ,h to insert header"
    echo "3. Fill in the description field"
    echo "4. Start coding!"
    echo ""
    echo "Keyboard Shortcuts:"
    echo "===================="
    echo "• F2 or ,h  - Insert Lomnuer header"
    echo "• ,u        - Manual update timestamp"
    echo "• ,w        - Save file"
    echo "• ,q        - Quit vim"
    echo "• ,x        - Save and quit"
    echo ""
    echo "Auto Features:"
    echo "==================="
    echo "• Timestamp updates automatically when you save"
    echo "• Works with: .c .cpp .h .hpp .js .py .php .java"
    echo ""
    echo "To customize author/email:"
    echo "=========================="
    echo "• Edit ~/.vimrc"
    echo "• Find lines with 'Lomnuer Gang Member' and 'lomnuer@gang.dev'"
    echo "• Replace with your information"
    echo ""
    print_success "Ready to code with style! 🦉"
}

# Main installation function
main() {
    echo "Starting Lomnuer Header System installation..."
    echo ""
    
    check_vim
    backup_config
    create_directories
    install_vimrc
    test_installation
    show_instructions
    
    echo ""
    echo "🦉 Happy coding with Lomnuer Header System! 🦉"
}

# Run main function
main
