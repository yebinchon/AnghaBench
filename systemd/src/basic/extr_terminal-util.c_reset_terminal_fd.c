
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_lflag; int* c_cc; int c_cflag; int c_oflag; } ;


 int BRKINT ;
 int CREAD ;
 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOK ;
 int ECHOKE ;
 int ECHOPRT ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int IMAXBEL ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IUCLC ;
 int IUTF8 ;
 int KDSETMODE ;
 int KD_TEXT ;
 int ONLCR ;
 int TCIOFLUSH ;
 int TCSANOW ;
 int TIOCNXCL ;
 size_t VEOF ;
 size_t VEOL ;
 size_t VEOL2 ;
 size_t VERASE ;
 size_t VINTR ;
 size_t VKILL ;
 size_t VLNEXT ;
 size_t VMIN ;
 size_t VQUIT ;
 size_t VREPRINT ;
 size_t VSTART ;
 size_t VSTOP ;
 size_t VSUSP ;
 size_t VTIME ;
 size_t VWERASE ;
 int assert (int) ;
 int errno ;
 int ioctl (int,int ,...) ;
 int tcflush (int,int ) ;
 scalar_t__ tcgetattr (int,struct termios*) ;
 scalar_t__ tcsetattr (int,int ,struct termios*) ;
 int vt_reset_keyboard (int) ;

int reset_terminal_fd(int fd, bool switch_to_text) {
        struct termios termios;
        int r = 0;



        assert(fd >= 0);






        (void) ioctl(fd, TIOCNXCL);


        if (switch_to_text)
                (void) ioctl(fd, KDSETMODE, KD_TEXT);


        (void) vt_reset_keyboard(fd);

        if (tcgetattr(fd, &termios) < 0) {
                r = -errno;
                goto finish;
        }





        termios.c_iflag &= ~(IGNBRK | BRKINT | ISTRIP | INLCR | IGNCR | IUCLC);
        termios.c_iflag |= ICRNL | IMAXBEL | IUTF8;
        termios.c_oflag |= ONLCR;
        termios.c_cflag |= CREAD;
        termios.c_lflag = ISIG | ICANON | IEXTEN | ECHO | ECHOE | ECHOK | ECHOCTL | ECHOPRT | ECHOKE;

        termios.c_cc[VINTR] = 03;
        termios.c_cc[VQUIT] = 034;
        termios.c_cc[VERASE] = 0177;
        termios.c_cc[VKILL] = 025;
        termios.c_cc[VEOF] = 04;
        termios.c_cc[VSTART] = 021;
        termios.c_cc[VSTOP] = 023;
        termios.c_cc[VSUSP] = 032;
        termios.c_cc[VLNEXT] = 026;
        termios.c_cc[VWERASE] = 027;
        termios.c_cc[VREPRINT] = 022;
        termios.c_cc[VEOL] = 0;
        termios.c_cc[VEOL2] = 0;

        termios.c_cc[VTIME] = 0;
        termios.c_cc[VMIN] = 1;

        if (tcsetattr(fd, TCSANOW, &termios) < 0)
                r = -errno;

finish:

        (void) tcflush(fd, TCIOFLUSH);

        return r;
}
