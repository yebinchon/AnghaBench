
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sortby_value {int dummy; } ;
struct sortby_data {int len; int capa; TYPE_2__* buf; int func; int strm; } ;
typedef int strm_value ;
struct TYPE_5__ {struct sortby_data* data; } ;
typedef TYPE_1__ strm_stream ;
struct TYPE_6__ {int v; int o; } ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 scalar_t__ strm_funcall (int ,int ,int,int *,int *) ;

__attribute__((used)) static int
iter_sortby(strm_stream* strm, strm_value data)
{
  struct sortby_data* d = strm->data;

  if (d->len >= d->capa) {
    d->capa *= 2;
    d->buf = realloc(d->buf, sizeof(struct sortby_value)*d->capa);
  }
  d->buf[d->len].o = data;
  if (strm_funcall(d->strm, d->func, 1, &data, &d->buf[d->len].v) == STRM_NG) {
    return STRM_NG;;
  }
  d->len++;
  return STRM_OK;
}
