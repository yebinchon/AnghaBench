
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int fmd_hdl_t ;


 int FM_CLASS ;
 scalar_t__ fmd_strmatch (char*,char const*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;

int
fmd_nvl_class_match(fmd_hdl_t *hdl, nvlist_t *nvl, const char *pattern)
{
 char *class;

 return (nvl != ((void*)0) &&
     nvlist_lookup_string(nvl, FM_CLASS, &class) == 0 &&
     fmd_strmatch(class, pattern));
}
