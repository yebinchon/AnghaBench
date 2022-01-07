
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ polesite; scalar_t__ pstg; scalar_t__ poleobj; } ;
struct re_object {TYPE_1__ obj; } ;


 int IOleClientSite_Release (scalar_t__) ;
 int IOleObject_Release (scalar_t__) ;
 int IStorage_Release (scalar_t__) ;
 int heap_free (struct re_object*) ;

void ME_DeleteReObject(struct re_object *reobj)
{
    if (reobj->obj.poleobj) IOleObject_Release(reobj->obj.poleobj);
    if (reobj->obj.pstg) IStorage_Release(reobj->obj.pstg);
    if (reobj->obj.polesite) IOleClientSite_Release(reobj->obj.polesite);
    heap_free(reobj);
}
