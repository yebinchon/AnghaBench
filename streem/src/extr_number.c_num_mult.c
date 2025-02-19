
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 int strm_float_value (int) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;
 scalar_t__ strm_int_p (int ) ;
 int strm_int_value (int) ;
 int strm_value_float (int ) ;
 int strm_value_int (int ) ;

__attribute__((used)) static int
num_mult(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value x, y;

  strm_get_args(strm, argc, args, "NN", &x, &y);
  if (strm_int_p(x) && strm_int_p(y)) {
    *ret = strm_int_value(strm_value_int(x)*strm_value_int(y));
    return STRM_OK;
  }
  *ret = strm_float_value(strm_value_float(x)*strm_value_float(y));
  return STRM_OK;
}
