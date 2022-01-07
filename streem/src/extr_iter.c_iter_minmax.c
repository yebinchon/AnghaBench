
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct minmax_data {double num; void* data; scalar_t__ min; scalar_t__ start; int func; } ;
typedef void* strm_value ;
struct TYPE_4__ {struct minmax_data* data; } ;
typedef TYPE_1__ strm_stream ;


 scalar_t__ FALSE ;
 scalar_t__ STRM_NG ;
 int STRM_OK ;
 scalar_t__ strm_funcall (TYPE_1__*,int ,int,void**,void**) ;
 int strm_nil_p (int ) ;
 double strm_value_float (void*) ;

__attribute__((used)) static int
iter_minmax(strm_stream* strm, strm_value data)
{
  struct minmax_data* d = strm->data;
  strm_value e;
  double num;

  if (!strm_nil_p(d->func)) {
    if (strm_funcall(strm, d->func, 1, &data, &e) == STRM_NG) {
      return STRM_NG;
    }
  }
  else {
    e = data;
  }
  num = strm_value_float(e);
  if (d->start) {
    d->start = FALSE;
    d->num = num;
    d->data = data;
  }
  else if (d->min) {
    if (d->num > num) {
      d->num = num;
      d->data = data;
    }
  }
  else {
    if (d->num < num) {
      d->num = num;
      d->data = data;
    }
  }
  return STRM_OK;
}
