
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * module_find (char const*) ;

bool module_exists (const char * psz_name)
{
    return module_find (psz_name) != ((void*)0);
}
