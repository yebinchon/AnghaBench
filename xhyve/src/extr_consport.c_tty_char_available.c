
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ STDIN_FILENO ;
 scalar_t__ select (scalar_t__,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static bool
tty_char_available(void)
{
 fd_set rfds;
 struct timeval tv;

 FD_ZERO(&rfds);
 FD_SET(STDIN_FILENO, &rfds);
 tv.tv_sec = 0;
 tv.tv_usec = 0;

 if (select(STDIN_FILENO + 1, &rfds, ((void*)0), ((void*)0), &tv) > 0) {
  return (1);
 } else {
  return (0);
 }
}
