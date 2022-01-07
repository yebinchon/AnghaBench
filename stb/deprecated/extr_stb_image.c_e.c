
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* failure_reason ;

__attribute__((used)) static int e(const char *str)
{
   failure_reason = str;
   return 0;
}
