
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sort_data {int len; int capa; int * buf; int func; } ;
typedef int strm_value ;
struct TYPE_4__ {struct sort_data* data; } ;
typedef TYPE_1__ strm_stream ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 int * realloc (int *,int) ;
 scalar_t__ strm_funcall (TYPE_1__*,int ,int,int *,int *) ;
 scalar_t__ strm_nil_p (int ) ;

__attribute__((used)) static int
iter_median(strm_stream* strm, strm_value data)
{
  struct sort_data* d = strm->data;

  if (d->len >= d->capa) {
    d->capa *= 2;
    d->buf = realloc(d->buf, sizeof(strm_value)*d->capa);
  }
  if (strm_nil_p(d->func)) {
    d->buf[d->len++] = data;
  }
  else if (strm_funcall(strm, d->func, 1, &data, &d->buf[d->len++]) == STRM_NG) {
    return STRM_NG;
  }
  return STRM_OK;
}
