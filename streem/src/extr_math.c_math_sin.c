
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int sin (double) ;
 int strm_float_value (int ) ;
 int strm_get_args (int *,int,int *,char*,double*) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
math_sin(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  double f;

  strm_get_args(strm, argc, args, "f", &f);
  f = strm_value_float(args[0]);
  *ret = strm_float_value(sin(f));
  return STRM_OK;
}
