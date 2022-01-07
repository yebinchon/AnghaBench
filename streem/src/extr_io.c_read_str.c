
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_int ;


 char* malloc (int ) ;
 int memcpy (char*,char const*,int ) ;
 int strm_str_new (char*,int ) ;
 int strm_str_value (int ) ;

__attribute__((used)) static strm_value
read_str(const char* beg, strm_int len)
{
  char *p = malloc(len);

  memcpy(p, beg, len);
  return strm_str_value(strm_str_new(p, len));
}
