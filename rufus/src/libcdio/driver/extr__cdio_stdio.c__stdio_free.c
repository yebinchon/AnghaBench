
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; struct TYPE_3__* const pathname; } ;
typedef TYPE_1__ _UserData ;


 int _stdio_close (void*) ;
 int free (TYPE_1__* const) ;

__attribute__((used)) static void
_stdio_free(void *user_data)
{
  _UserData *const ud = user_data;

  if (ud->pathname)
    free(ud->pathname);

  if (ud->fd)
    _stdio_close(user_data);

  free(ud);
}
