
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wxflag; int handle; } ;
typedef TYPE_1__ ioinfo ;


 int INVALID_HANDLE_VALUE ;
 int STD_ERROR_HANDLE ;
 int STD_INPUT_HANDLE ;
 int STD_OUTPUT_HANDLE ;
 int SetStdHandle (int ,int ) ;
 int TRACE (char*,int) ;
 TYPE_1__ __badioinfo ;
 TYPE_1__* get_ioinfo (int) ;
 int release_ioinfo (TYPE_1__*) ;

__attribute__((used)) static void msvcrt_free_fd(int fd)
{
  ioinfo *fdinfo = get_ioinfo(fd);

  if(fdinfo != &__badioinfo)
  {
    fdinfo->handle = INVALID_HANDLE_VALUE;
    fdinfo->wxflag = 0;
  }
  TRACE(":fd (%d) freed\n",fd);

  if (fd < 3)
  {
    switch (fd)
    {
    case 0:
        SetStdHandle(STD_INPUT_HANDLE, 0);
        break;
    case 1:
        SetStdHandle(STD_OUTPUT_HANDLE, 0);
        break;
    case 2:
        SetStdHandle(STD_ERROR_HANDLE, 0);
        break;
    }
  }
  release_ioinfo(fdinfo);
}
