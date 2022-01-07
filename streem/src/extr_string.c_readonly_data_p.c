
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __init_array_start ;
 char const* _etext ;

__attribute__((used)) static inline int
readonly_data_p(const char* p)
{
  return _etext < p && p < (char*)&__init_array_start;
}
