
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node; } ;
typedef TYPE_1__ info_t ;
typedef int info_category_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int info_Delete (TYPE_1__*) ;
 TYPE_1__* info_category_FindInfo (int *,char const*) ;
 int vlc_list_remove (int *) ;

__attribute__((used)) static inline int info_category_DeleteInfo(info_category_t *cat, const char *name)
{
    info_t *info = info_category_FindInfo(cat, name);
    if (info != ((void*)0)) {
        vlc_list_remove(&info->node);
        info_Delete(info);
        return VLC_SUCCESS;
    }
    return VLC_EGENERIC;
}
