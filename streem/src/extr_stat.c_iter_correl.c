
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct correl_data {double n; double sx; double sy; int sxx; int syy; int sxy; } ;
typedef int strm_value ;
struct TYPE_4__ {struct correl_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int strm_array_p (int ) ;
 int strm_ary_len (int ) ;
 int * strm_ary_ptr (int ) ;
 int strm_number_p (int ) ;
 int strm_raise (TYPE_1__*,char*) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
iter_correl(strm_stream* strm, strm_value data)
{
  struct correl_data* d = strm->data;
  strm_value *v;
  double dx, dy;

  if (!strm_array_p(data) || strm_ary_len(data) != 2) {
    strm_raise(strm, "invalid data");
    return STRM_NG;
  }

  v = strm_ary_ptr(data);
  if (!strm_number_p(v[0]) || !strm_number_p(v[1])) {
    strm_raise(strm, "correl() requires [num, num]");
    return STRM_NG;
  }
  d->n++;
  dx = strm_value_float(v[0]) - d->sx; d->sx += dx / d->n;
  dy = strm_value_float(v[1]) - d->sy; d->sy += dy / d->n;
  d->sxx += (d->n-1) * dx * dx / d->n;
  d->syy += (d->n-1) * dy * dy / d->n;
  d->sxy += (d->n-1) * dx * dy / d->n;
  return STRM_OK;
}
