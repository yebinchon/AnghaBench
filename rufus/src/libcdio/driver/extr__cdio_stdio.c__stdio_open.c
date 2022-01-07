
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fd; int fd_buf; int pathname; } ;
typedef TYPE_1__ _UserData ;


 int * CDIO_FOPEN (int ,char*) ;
 int CDIO_STDIO_BUFSIZE ;
 int _IOFBF ;
 int calloc (int,int ) ;
 int setvbuf (int *,int ,int ,int ) ;

__attribute__((used)) static int
_stdio_open (void *user_data)
{
  _UserData *const ud = user_data;

  if ((ud->fd = CDIO_FOPEN (ud->pathname, "rb")))
    {
      ud->fd_buf = calloc (1, CDIO_STDIO_BUFSIZE);
      setvbuf (ud->fd, ud->fd_buf, _IOFBF, CDIO_STDIO_BUFSIZE);
    }

  return (ud->fd == ((void*)0));
}
