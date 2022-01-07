
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;
typedef int strm_array ;


 int STRM_OK ;
 int strm_ary_new (int *,int) ;
 int * strm_ary_ptr (int ) ;
 int strm_ary_value (int ) ;
 int strm_get_args (int *,int,int *,char*,char const**,int*) ;
 int strm_str_new (char const*,int) ;
 int utf8len (char const*,char const*) ;

__attribute__((used)) static int
str_chars(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  const char* str;
  const char* s;
  const char* prev = ((void*)0);
  strm_int slen;
  strm_array ary;
  strm_int n = 0;
  strm_value* sps;
  strm_int i = 0;

  strm_get_args(strm, argc, args, "s", &str, &slen);

  s = str;

  while (*s) {
    s += utf8len(s, s + slen);
    n++;
  }

  ary = strm_ary_new(((void*)0), n);
  sps = strm_ary_ptr(ary);
  s = str;

  while (*s) {
    prev = s;
    s += utf8len(s, s + slen);
    sps[i++] = strm_str_new(prev, s - prev);
  }

  *ret = strm_ary_value(ary);
  return STRM_OK;
}
