
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fd_buf; int * fd; } ;
typedef TYPE_1__ _UserData ;


 int cdio_error (char*,int ) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int free (int *) ;
 int strerror (int ) ;

__attribute__((used)) static int
_stdio_close(void *user_data)
{
  _UserData *const ud = user_data;

  if (fclose (ud->fd))
    cdio_error ("fclose (): %s", strerror (errno));

  ud->fd = ((void*)0);

  free (ud->fd_buf);
  ud->fd_buf = ((void*)0);

  return 0;
}
