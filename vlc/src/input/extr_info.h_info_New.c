
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * psz_value; int psz_name; } ;
typedef TYPE_1__ info_t ;


 TYPE_1__* malloc (int) ;
 int strdup (char const*) ;

__attribute__((used)) static inline info_t *info_New(const char *name)
{
    info_t *info = malloc(sizeof(*info));
    if (!info)
        return ((void*)0);

    info->psz_name = strdup(name);
    info->psz_value = ((void*)0);
    return info;
}
