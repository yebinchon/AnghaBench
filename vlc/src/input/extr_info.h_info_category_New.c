
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int infos; int psz_name; } ;
typedef TYPE_1__ info_category_t ;


 TYPE_1__* malloc (int) ;
 int strdup (char const*) ;
 int vlc_list_init (int *) ;

__attribute__((used)) static inline info_category_t *info_category_New(const char *name)
{
    info_category_t *cat = malloc(sizeof(*cat));
    if (!cat)
        return ((void*)0);
    cat->psz_name = strdup(name);
    vlc_list_init(&cat->infos);
    return cat;
}
