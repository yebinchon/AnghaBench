
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct termios {int c_cflag; int c_iflag; int * c_cc; } ;
typedef int speed_t ;
struct TYPE_3__ {int baud_rate; int stop_bits; int parity; int word_length; int control; int xonoff; int * chars; scalar_t__ rts; scalar_t__ dtr; struct termios* ptermios; } ;
typedef TYPE_1__ SERIAL_DEVICE ;
typedef int NTHANDLE ;


 int B110 ;
 int B115200 ;
 int B1200 ;
 int B134 ;
 int B150 ;
 int B1800 ;
 int B19200 ;
 int B2400 ;
 int B300 ;
 int B38400 ;
 int B4800 ;
 int B57600 ;
 int B600 ;
 int B75 ;
 int B9600 ;
 int CBAUD ;
 int CRTSCTS ;
 int CS5 ;
 int CS6 ;
 int CS7 ;
 int CS8 ;
 int CSIZE ;
 int CSTOPB ;

 int IMAXBEL ;
 int IXOFF ;
 int IXON ;


 int PARENB ;
 int PARODD ;
 size_t SERIAL_CHAR_BREAK ;
 size_t SERIAL_CHAR_EOF ;
 size_t SERIAL_CHAR_ERROR ;
 size_t SERIAL_CHAR_XOFF ;
 size_t SERIAL_CHAR_XON ;
 int SERIAL_CTS_HANDSHAKE ;
 int SERIAL_XOFF_HANDSHAKE ;
 int SERIAL_XON_HANDSHAKE ;

 int TCSANOW ;
 size_t VEOF ;
 size_t VINTR ;
 size_t VKILL ;
 size_t VSTART ;
 size_t VSTOP ;
 int cfsetispeed (struct termios*,int) ;
 int cfsetospeed (struct termios*,int) ;
 int tcsetattr (int ,int ,struct termios*) ;

__attribute__((used)) static void
set_termios(SERIAL_DEVICE * pser_inf, NTHANDLE serial_fd)
{
 speed_t speed;

 struct termios *ptermios;

 ptermios = pser_inf->ptermios;


 switch (pser_inf->baud_rate)
 {
  default:
   speed = B9600;
   break;
 }







 cfsetispeed(pser_inf->ptermios, speed);
 cfsetospeed(pser_inf->ptermios, pser_inf->dtr ? speed : 0);


 ptermios->c_cflag &= ~(CSTOPB | PARENB | PARODD | CSIZE | CRTSCTS);
 switch (pser_inf->stop_bits)
 {
  case 128:
   ptermios->c_cflag |= CSTOPB;
   break;
  default:
   ptermios->c_cflag &= ~CSTOPB;
   break;
 }

 switch (pser_inf->parity)
 {
  case 131:
   ptermios->c_cflag |= PARENB;
   break;
  case 129:
   ptermios->c_cflag |= PARENB | PARODD;
   break;
  case 130:
   ptermios->c_cflag &= ~(PARENB | PARODD);
   break;
 }

 switch (pser_inf->word_length)
 {
  case 5:
   ptermios->c_cflag |= CS5;
   break;
  case 6:
   ptermios->c_cflag |= CS6;
   break;
  case 7:
   ptermios->c_cflag |= CS7;
   break;
  default:
   ptermios->c_cflag |= CS8;
   break;
 }
 if (pser_inf->control & SERIAL_CTS_HANDSHAKE)
 {
  ptermios->c_cflag |= CRTSCTS;
 }
 else
 {
  ptermios->c_cflag &= ~CRTSCTS;
 }


 if (pser_inf->xonoff & SERIAL_XON_HANDSHAKE)
 {
  ptermios->c_iflag |= IXON | IMAXBEL;
 }
 if (pser_inf->xonoff & SERIAL_XOFF_HANDSHAKE)
 {
  ptermios->c_iflag |= IXOFF | IMAXBEL;
 }

 if ((pser_inf->xonoff & (SERIAL_XOFF_HANDSHAKE | SERIAL_XON_HANDSHAKE)) == 0)
 {
  ptermios->c_iflag &= ~IXON;
  ptermios->c_iflag &= ~IXOFF;
 }

 ptermios->c_cc[VSTART] = pser_inf->chars[SERIAL_CHAR_XON];
 ptermios->c_cc[VSTOP] = pser_inf->chars[SERIAL_CHAR_XOFF];
 ptermios->c_cc[VEOF] = pser_inf->chars[SERIAL_CHAR_EOF];
 ptermios->c_cc[VINTR] = pser_inf->chars[SERIAL_CHAR_BREAK];
 ptermios->c_cc[VKILL] = pser_inf->chars[SERIAL_CHAR_ERROR];

 tcsetattr(serial_fd, TCSANOW, ptermios);
}
