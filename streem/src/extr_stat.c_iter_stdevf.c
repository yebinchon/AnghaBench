
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stdev_data {double num; int s2; scalar_t__ s1; int func; } ;
typedef int strm_value ;
struct TYPE_4__ {struct stdev_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int convert_number (TYPE_1__*,int ,int ) ;
 int strm_number_p (int ) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
iter_stdevf(strm_stream* strm, strm_value data)
{
  struct stdev_data* d = strm->data;
  double x;

  data = convert_number(strm, data, d->func);
  if (!strm_number_p(data)) {
    return STRM_NG;
  }
  x = strm_value_float(data);
  d->num++;
  x -= d->s1;
  d->s1 += x/d->num;
  d->s2 += (d->num-1) * x * x / d->num;
  return STRM_OK;
}
