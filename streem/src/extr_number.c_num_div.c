
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int strm_float_value (double) ;
 int strm_get_args (int *,int,int *,char*,double*,double*) ;

__attribute__((used)) static int
num_div(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  double x, y;

  strm_get_args(strm, argc, args, "ff", &x, &y);
  *ret = strm_float_value(x/y);
  return STRM_OK;
}
