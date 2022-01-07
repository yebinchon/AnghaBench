
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int TYPE_NUM ;
 int csv_value (int ,int ,int ) ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_number_p (int ) ;
 int strm_raise (int *,char*) ;
 int strm_str_len (int ) ;
 int strm_str_ptr (int ) ;

__attribute__((used)) static int
str_number(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value s;

  strm_get_args(strm, argc, args, "S", &s);
  s = csv_value(strm_str_ptr(s), strm_str_len(s), TYPE_NUM);
  if (!strm_number_p(s)) {
    strm_raise(strm, "invalid string for number");
    return STRM_NG;
  }
  *ret = s;
  return STRM_OK;
}
