
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {unsigned long tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
struct TYPE_3__ {int ctrlSocketR; int * cin; } ;
typedef TYPE_1__* FTPCIPtr ;


 int FD_SET (int,int*) ;
 int FD_ZERO (int*) ;
 int SELECT_TYPE_ARG234 ;
 int fileno (int *) ;
 int select (int,int,int *,int *,struct timeval*) ;

int
WaitResponse(const FTPCIPtr cip, unsigned int sec)
{
 int result;
 fd_set ss;
 struct timeval tv;
 int fd;




 if (cip->cin == ((void*)0))
  return (-1);
 fd = fileno(cip->cin);

 if (fd < 0)
  return (-1);
 FD_ZERO(&ss);
 FD_SET(fd, &ss);
 tv.tv_sec = (unsigned long) sec;
 tv.tv_usec = 0;
 result = select(fd + 1, SELECT_TYPE_ARG234 &ss, ((void*)0), ((void*)0), &tv);
 return (result);
}
