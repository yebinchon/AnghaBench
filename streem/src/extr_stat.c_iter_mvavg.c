
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct mvavg_data {size_t num; double* data; size_t i; int filled; int func; scalar_t__ func_p; } ;
typedef int strm_value ;
struct TYPE_6__ {struct mvavg_data* data; } ;
typedef TYPE_1__ strm_stream ;
typedef size_t strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int TRUE ;
 int convert_number (TYPE_1__*,int ,int ) ;
 scalar_t__ fabs (double) ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 int strm_float_value (double) ;
 int strm_nil_value () ;
 int strm_number_p (int ) ;
 int strm_raise (TYPE_1__*,char*) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
iter_mvavg(strm_stream* strm, strm_value data)
{
  struct mvavg_data* d = strm->data;
  double sum = 0;
  double c = 0;
  strm_int i, len = d->num;

  if (d->func_p) {
    data = convert_number(strm, data, d->func);
  }
  if (!strm_number_p(data)) {
    strm_raise(strm, "number required");
    return STRM_NG;
  }
  d->data[d->i++] = strm_value_float(data);
  if (d->i == d->num) {
    d->filled = TRUE;
    d->i = 0;
  }
  if (!d->filled) {
    strm_emit(strm, strm_nil_value(), ((void*)0));
    return STRM_OK;
  }
  for (i=0; i<len; i++) {
    double x = d->data[i];
    double t = sum + x;
    if (fabs(sum) >= fabs(x))
      c += ((sum - t) + x);
    else
      c += ((x - t) + sum);
    sum = t;
  }
  strm_emit(strm, strm_float_value((sum+c)/d->num), ((void*)0));
  return STRM_OK;
}
