
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stdev_data {double num; int s2; scalar_t__ s1; } ;
typedef int strm_value ;
struct TYPE_3__ {struct stdev_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
iter_stdev(strm_stream* strm, strm_value data)
{
  struct stdev_data* d = strm->data;
  double x = strm_value_float(data);

  d->num++;
  x -= d->s1;
  d->s1 += x/d->num;
  d->s2 += (d->num-1) * x * x / d->num;
  return STRM_OK;
}
