
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stdev_data {int mode; int s2; int s1; int num; } ;
typedef int strm_value ;
struct TYPE_4__ {struct stdev_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 int float2 (int ,double) ;




 double sqrt (int) ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 int strm_float_value (double) ;

__attribute__((used)) static int
stdev_finish(strm_stream* strm, strm_value data)
{
  struct stdev_data* d = strm->data;
  double s;

  switch (d->mode) {
  case 129:
    s = sqrt(d->s2 / (d->num-1));
    strm_emit(strm, strm_float_value(s), ((void*)0));
    break;
  case 128:
    s = d->s2 / (d->num-1);
    strm_emit(strm, strm_float_value(s), ((void*)0));
    break;
  case 131:
    s = sqrt(d->s2 / (d->num-1));
    strm_emit(strm, float2(d->s1, s), ((void*)0));
    break;
  case 130:
    s = d->s2 / (d->num-1);
    strm_emit(strm, float2(d->s1, s), ((void*)0));
    break;
  }
  return STRM_OK;
}
