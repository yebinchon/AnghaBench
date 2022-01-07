
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef int strm_state ;


 int strlen (char const*) ;
 int * strm_ns_create (int *,int ) ;
 int strm_str_new (char const*,int ) ;

strm_state*
strm_ns_new(strm_state* state, const char* name)
{
  strm_string s = strm_str_new(name, strlen(name));
  return strm_ns_create(state, s);
}
