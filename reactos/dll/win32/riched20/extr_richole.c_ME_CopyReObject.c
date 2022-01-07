
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * polesite; int * pstg; int * poleobj; } ;
typedef TYPE_1__ REOBJECT ;
typedef int DWORD ;


 int IOleClientSite_AddRef (int *) ;
 int IOleObject_AddRef (int *) ;
 int IStorage_AddRef (int *) ;
 int REO_GETOBJ_POLEOBJ ;
 int REO_GETOBJ_POLESITE ;
 int REO_GETOBJ_PSTG ;

void ME_CopyReObject(REOBJECT *dst, const REOBJECT *src, DWORD flags)
{
    *dst = *src;
    dst->poleobj = ((void*)0);
    dst->pstg = ((void*)0);
    dst->polesite = ((void*)0);

    if ((flags & REO_GETOBJ_POLEOBJ) && src->poleobj)
    {
        dst->poleobj = src->poleobj;
        IOleObject_AddRef(dst->poleobj);
    }
    if ((flags & REO_GETOBJ_PSTG) && src->pstg)
    {
        dst->pstg = src->pstg;
        IStorage_AddRef(dst->pstg);
    }
    if ((flags & REO_GETOBJ_POLESITE) && src->polesite)
    {
        dst->polesite = src->polesite;
        IOleClientSite_AddRef(dst->polesite);
    }
}
