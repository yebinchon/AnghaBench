
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_state ;


 int strlen (char const*) ;
 int strm_str_intern (char const*,int ) ;
 int strm_var_set (int *,int ,int ) ;

int
strm_var_def(strm_state* state, const char* name, strm_value val)
{
  return strm_var_set(state, strm_str_intern(name, strlen(name)), val);
}
