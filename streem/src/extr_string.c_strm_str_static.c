
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef int strm_int ;


 int str_new (char const*,int ,int) ;

strm_string
strm_str_static(const char* p, strm_int len)
{
  return str_new(p, len, 1);
}
