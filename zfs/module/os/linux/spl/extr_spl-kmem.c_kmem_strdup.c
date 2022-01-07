
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KM_SLEEP ;
 char* __strdup (char const*,int ) ;

char *
kmem_strdup(const char *str)
{
 return (__strdup(str, KM_SLEEP));
}
