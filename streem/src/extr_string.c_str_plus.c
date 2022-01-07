
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_string ;
typedef int strm_stream ;


 int STRM_OK ;
 int memcpy (char*,scalar_t__,size_t) ;
 int strm_get_args (int *,int,int *,char*,int *,int *) ;
 size_t strm_str_len (int ) ;
 int strm_str_new (int *,size_t) ;
 scalar_t__ strm_str_ptr (int ) ;
 int strm_str_value (int ) ;

__attribute__((used)) static int
str_plus(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_string str1, str2, str3;
  char *p;

  strm_get_args(strm, argc, args, "SS", &str1, &str2);
  str3 = strm_str_new(((void*)0), strm_str_len(str1) + strm_str_len(str2));

  p = (char*)strm_str_ptr(str3);
  memcpy(p, strm_str_ptr(str1), strm_str_len(str1));
  memcpy(p+strm_str_len(str1), strm_str_ptr(str2), strm_str_len(str2));
  p[strm_str_len(str3)] = '\0';
  *ret = strm_str_value(str3);
  return STRM_OK;
}
