
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int TCSANOW ;
 int atexit (int ) ;
 int cfmakeraw (int *) ;
 int tcgetattr (int ,int *) ;
 int tcsetattr (int ,int ,int *) ;
 int tio_new ;
 int tio_orig ;
 int ttyclose ;

__attribute__((used)) static void
ttyopen(void)
{
 tcgetattr(STDIN_FILENO, &tio_orig);

 cfmakeraw(&tio_new);
 tcsetattr(STDIN_FILENO, TCSANOW, &tio_new);

 atexit(ttyclose);
}
