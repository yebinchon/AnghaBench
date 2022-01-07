
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int VERIFY0 (int ) ;
 int nvlist_remove_all (int *,char const*) ;

void
fnvlist_remove(nvlist_t *nvl, const char *name)
{
 VERIFY0(nvlist_remove_all(nvl, name));
}
