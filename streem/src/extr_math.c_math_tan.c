
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int strm_float_value (int ) ;
 int strm_get_args (int *,int,int *,char*,double*) ;
 int tan (double) ;

__attribute__((used)) static int
math_tan(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  double f;

  strm_get_args(strm, argc, args, "f", &f);
  *ret = strm_float_value(tan(f));
  return STRM_OK;
}
