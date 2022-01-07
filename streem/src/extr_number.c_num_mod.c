
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int fmod (int ,int) ;
 scalar_t__ strm_float_p (int ) ;
 int strm_float_value (int ) ;
 int strm_get_args (int *,int,int *,char*,int *,int*) ;
 scalar_t__ strm_int_p (int ) ;
 int strm_int_value (int) ;
 int strm_value_float (int ) ;
 int strm_value_int (int ) ;

__attribute__((used)) static int
num_mod(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value x;
  strm_int y;

  strm_get_args(strm, argc, args, "Ni", &x, &y);
  if (strm_int_p(x)) {
    *ret = strm_int_value(strm_value_int(x)%y);
    return STRM_OK;
  }
  if (strm_float_p(x)) {
    *ret = strm_float_value(fmod(strm_value_float(x), y));
    return STRM_OK;
  }
  return STRM_NG;
}
