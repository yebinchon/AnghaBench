
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int t_intrc; int t_quitc; int t_suspc; int t_dsuspc; int sg_flags; int* c_cc; int c_iflag; int c_lflag; } ;
struct TYPE_12__ {int* c_cc; int c_iflag; int c_lflag; } ;


 int BRKINT ;
 int ECHO ;
 int ICANON ;
 int IEXTEN ;
 int IGNBRK ;
 int IGNPAR ;
 int ISIG ;
 int ISTRIP ;
 int IXOFF ;
 int IXON ;
 int RAW ;
 int TCGETA ;
 int TCSANOW ;
 int TCSETA ;
 int TIOCGETC ;
 int TIOCGETP ;
 int TIOCGLTC ;
 int TIOCSETN ;
 size_t VDSUSP ;
 size_t VINTR ;
 size_t VMIN ;
 size_t VQUIT ;
 size_t VSUSP ;
 size_t VTIME ;
 int gl_dsuspc ;
 int gl_intrc ;
 int gl_quitc ;
 int gl_suspc ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 TYPE_2__ ltch ;
 TYPE_2__ new_termio ;
 TYPE_1__ new_termios ;
 TYPE_2__ new_tty ;
 TYPE_2__ old_termio ;
 TYPE_1__ old_termios ;
 TYPE_2__ old_tty ;
 scalar_t__ tcgetattr (int ,TYPE_1__*) ;
 TYPE_2__ tch ;
 int tcsetattr (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
gl_char_init(void)
{
  if (ioctl(0, TCGETA, &old_termio) == 0) {
   gl_intrc = old_termio.c_cc[VINTR];
   gl_quitc = old_termio.c_cc[VQUIT];
  }
  new_termio = old_termio;
  new_termio.c_iflag &= ~(BRKINT|ISTRIP|IXON|IXOFF);
  new_termio.c_iflag |= (IGNBRK|IGNPAR);
  new_termio.c_lflag &= ~(ICANON|ISIG|ECHO);
  new_termio.c_cc[VMIN] = 1;
  new_termio.c_cc[VTIME] = 0;
  ioctl(0, TCSETA, &new_termio);


}
