
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef int strm_int ;


 int str_intern (char const*,int ,int) ;

strm_string
strm_str_intern_static(const char* p, strm_int len)
{
  return str_intern(p, len, 1);
}
