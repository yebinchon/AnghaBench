
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int ptrcmp ;
 int vlc_objres_remove (int *,void*,int ) ;

void vlc_obj_free(vlc_object_t *obj, void *ptr)
{
    vlc_objres_remove(obj, ptr, ptrcmp);
}
