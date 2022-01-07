
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct rnorm_data {int dummy; } ;
typedef int strm_value ;
struct TYPE_5__ {struct rnorm_data* data; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_OK ;
 double rand_normal (struct rnorm_data*) ;
 int strm_emit (TYPE_1__*,int ,int (*) (TYPE_1__*,int )) ;
 int strm_float_value (double) ;

__attribute__((used)) static int
gen_rnorm(strm_stream* strm, strm_value data)
{
  struct rnorm_data* d = strm->data;
  double f = rand_normal(d);

  strm_emit(strm, strm_float_value(f), gen_rnorm);
  return STRM_OK;
}
