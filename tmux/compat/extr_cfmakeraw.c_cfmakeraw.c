
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int c_lflag; int c_cflag; int c_oflag; } ;


 int BRKINT ;
 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int ECHONL ;
 int ICANON ;
 int ICRNL ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNCR ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IXON ;
 int OPOST ;
 int PARENB ;
 int PARMRK ;

void
cfmakeraw(struct termios *tio)
{
 tio->c_iflag &= ~(IGNBRK|BRKINT|PARMRK|ISTRIP|INLCR|IGNCR|ICRNL|IXON);
 tio->c_oflag &= ~OPOST;
 tio->c_lflag &= ~(ECHO|ECHONL|ICANON|ISIG|IEXTEN);
 tio->c_cflag &= ~(CSIZE|PARENB);
 tio->c_cflag |= CS8;
}
