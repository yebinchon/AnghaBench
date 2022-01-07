
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 scalar_t__ STRM_NG ;
 scalar_t__ strm_funcall (int *,int ,int,int *,int *) ;
 int strm_nil_value () ;
 int strm_number_p (int ) ;
 int strm_raise (int *,char*) ;

__attribute__((used)) static strm_value
convert_number(strm_stream* strm, strm_value data, strm_value func)
{
  strm_value val;

  if (strm_funcall(strm, func, 1, &data, &val) == STRM_NG) {
    return strm_nil_value();
  }
  if (!strm_number_p(val)) {
    strm_raise(strm, "number required");
    return strm_nil_value();
  }
  return val;
}
