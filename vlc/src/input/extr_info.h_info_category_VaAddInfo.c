
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_8__ {int * psz_value; int node; } ;
typedef TYPE_1__ info_t ;
struct TYPE_9__ {int infos; } ;
typedef TYPE_2__ info_category_t ;


 int free (int *) ;
 TYPE_1__* info_New (char const*) ;
 TYPE_1__* info_category_FindInfo (TYPE_2__*,char const*) ;
 int vasprintf (int **,char const*,int ) ;
 int vlc_list_append (int *,int *) ;

__attribute__((used)) static inline info_t *info_category_VaAddInfo(info_category_t *cat,
                                              const char *name,
                                              const char *format, va_list args)
{
    info_t *info = info_category_FindInfo(cat, name);
    if (!info) {
        info = info_New(name);
        if (!info)
            return ((void*)0);
        vlc_list_append(&info->node, &cat->infos);
    } else
        free(info->psz_value);
    if (vasprintf(&info->psz_value, format, args) == -1)
        info->psz_value = ((void*)0);
    return info;
}
