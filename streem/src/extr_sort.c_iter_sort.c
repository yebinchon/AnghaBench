
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sort_data {int len; int capa; int * buf; } ;
typedef int strm_value ;
struct TYPE_3__ {struct sort_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int * realloc (int *,int) ;

__attribute__((used)) static int
iter_sort(strm_stream* strm, strm_value data)
{
  struct sort_data* d = strm->data;

  if (d->len >= d->capa) {
    d->capa *= 2;
    d->buf = realloc(d->buf, sizeof(strm_value)*d->capa);
  }
  d->buf[d->len++] = data;
  return STRM_OK;
}
