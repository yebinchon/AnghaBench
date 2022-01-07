
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sum_data {double sum; double c; int num; } ;
typedef int strm_value ;
struct TYPE_3__ {struct sum_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 scalar_t__ fabs (double) ;
 int strm_number_p (int ) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
iter_sum(strm_stream* strm, strm_value data)
{
  struct sum_data* d = strm->data;
  double x, t;

  if (!strm_number_p(data)) {
    return STRM_NG;
  }
  x = strm_value_float(data);
  t = d->sum + x;
  if (fabs(d->sum) >= fabs(x))
    d->c += ((d->sum - t) + x);
  else
    d->c += ((x - t) + d->sum);
  d->sum = t;
  d->num++;
  return STRM_OK;
}
