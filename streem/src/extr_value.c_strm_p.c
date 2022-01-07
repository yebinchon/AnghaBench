
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_string ;


 int fputs (char const*,int ) ;
 int stdout ;
 char* strm_str_cstr (int ,char*) ;
 int strm_to_str (int ) ;

const char*
strm_p(strm_value val)
{
  char buf[7];
  strm_string str = strm_to_str(val);
  const char* p = strm_str_cstr(str, buf);
  fputs(p, stdout);
  fputs("\n", stdout);
  return p;
}
