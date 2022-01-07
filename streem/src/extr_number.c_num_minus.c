
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 scalar_t__ strm_float_p (int ) ;
 int strm_float_value (scalar_t__) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;
 scalar_t__ strm_int_p (int ) ;
 int strm_int_value (scalar_t__) ;
 scalar_t__ strm_number_p (int ) ;
 scalar_t__ strm_value_float (int ) ;
 scalar_t__ strm_value_int (int ) ;

__attribute__((used)) static int
num_minus(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  if (argc == 1) {
    if (strm_int_p(args[0])) {
      *ret = strm_int_value(-strm_value_int(args[0]));
      return STRM_OK;
    }
    if (strm_float_p(args[0])) {
      *ret = strm_float_value(-strm_value_float(args[0]));
      return STRM_OK;
    }
  }
  else {
    strm_value x, y;

    strm_get_args(strm, argc, args, "NN", &x, &y);
    if (strm_int_p(x) && strm_int_p(y)) {
      *ret = strm_int_value(strm_value_int(x)-strm_value_int(y));
      return STRM_OK;
    }
    if (strm_number_p(x) && strm_number_p(y)) {
      *ret = strm_float_value(strm_value_float(x)-strm_value_float(y));
      return STRM_OK;
    }
  }
  return STRM_NG;
}
