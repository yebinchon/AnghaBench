
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long ssize_t ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ _UserData ;


 int cdio_debug (char*) ;
 int cdio_error (char*,int ) ;
 int clearerr (int ) ;
 int errno ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 long fread (void*,int,size_t,int ) ;
 int strerror (int ) ;

__attribute__((used)) static ssize_t
_stdio_read(void *user_data, void *buf, size_t count)
{
  _UserData *const ud = user_data;
  long read_count;

  read_count = fread(buf, 1, count, ud->fd);

  if (read_count != count)
    {
      if (feof (ud->fd))
        {
          cdio_debug ("fread (): EOF encountered");
          clearerr (ud->fd);
        }
      else if (ferror (ud->fd))
        {
          cdio_error ("fread (): %s", strerror (errno));
          clearerr (ud->fd);
        }
      else
        cdio_debug ("fread (): short read and no EOF?!?");
    }

  return read_count;
}
