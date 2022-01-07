
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int opened; } ;
struct uart_softc {TYPE_1__ tty; } ;


 int O_NONBLOCK ;
 int O_RDWR ;
 scalar_t__ isatty (int) ;
 int open (char const*,int) ;

__attribute__((used)) static int
uart_tty_backend(struct uart_softc *sc, const char *backend)
{
 int fd;
 int retval;

 retval = -1;

 fd = open(backend, O_RDWR | O_NONBLOCK);
 if (fd > 0 && isatty(fd)) {
  sc->tty.fd = fd;
  sc->tty.opened = 1;
  retval = 0;
 }

 return (retval);
}
