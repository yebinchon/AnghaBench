
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c_cflag; } ;
struct ttyfd {scalar_t__ fd; TYPE_1__ tio_orig; TYPE_1__ tio_new; } ;


 int CLOCAL ;
 scalar_t__ STDIN_FILENO ;
 int TCSANOW ;
 int atexit (int ) ;
 int cfmakeraw (TYPE_1__*) ;
 int tcgetattr (scalar_t__,TYPE_1__*) ;
 int tcsetattr (scalar_t__,int ,TYPE_1__*) ;
 TYPE_1__ tio_stdio_orig ;
 int ttyclose ;

__attribute__((used)) static void
ttyopen(struct ttyfd *tf)
{

 tcgetattr(tf->fd, &tf->tio_orig);

 tf->tio_new = tf->tio_orig;
 cfmakeraw(&tf->tio_new);
 tf->tio_new.c_cflag |= CLOCAL;
 tcsetattr(tf->fd, TCSANOW, &tf->tio_new);

 if (tf->fd == STDIN_FILENO) {
  tio_stdio_orig = tf->tio_orig;
  atexit(ttyclose);
 }
}
