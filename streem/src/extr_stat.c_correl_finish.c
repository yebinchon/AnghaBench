
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct correl_data {int n; int sxx; int syy; double sxy; } ;
typedef int strm_value ;
struct TYPE_4__ {struct correl_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 double sqrt (int) ;
 int strm_emit (TYPE_1__*,int ,int *) ;
 int strm_float_value (double) ;

__attribute__((used)) static int
correl_finish(strm_stream* strm, strm_value data)
{
  struct correl_data* d = strm->data;

  d->n--;
  double sxx = sqrt(d->sxx / d->n);
  double syy = sqrt(d->syy / d->n);
  double sxy = d->sxy / (d->n * sxx * syy);
  strm_emit(strm, strm_float_value(sxy), ((void*)0));
  return STRM_OK;
}
