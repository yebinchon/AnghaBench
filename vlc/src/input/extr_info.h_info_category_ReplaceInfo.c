
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int node; int psz_name; } ;
typedef TYPE_1__ info_t ;
struct TYPE_9__ {int infos; } ;
typedef TYPE_2__ info_category_t ;


 int info_Delete (TYPE_1__*) ;
 TYPE_1__* info_category_FindInfo (TYPE_2__*,int ) ;
 int vlc_list_append (int *,int *) ;
 int vlc_list_remove (int *) ;

__attribute__((used)) static inline void info_category_ReplaceInfo(info_category_t *cat,
                                             info_t *info)
{
    info_t *old = info_category_FindInfo(cat, info->psz_name);
    if (old) {
        vlc_list_remove(&old->node);
        info_Delete(old);
    }
    vlc_list_append(&info->node, &cat->infos);
}
