
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct write_data {int f; TYPE_1__* io; } ;
typedef int strm_value ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ strm_stream ;
struct TYPE_4__ {int mode; } ;


 int STRM_IO_READING ;
 int STRM_OK ;
 int fclose (int ) ;
 int fileno (int ) ;
 int free (struct write_data*) ;
 int shutdown (int ,int) ;

__attribute__((used)) static int
write_close(strm_stream* strm, strm_value data)
{
  struct write_data *d = (struct write_data*)strm->data;


  shutdown(fileno(d->f), 1);

  if ((d->io->mode & STRM_IO_READING) == 0) {
    fclose(d->f);
  }
  free(d);
  return STRM_OK;
}
