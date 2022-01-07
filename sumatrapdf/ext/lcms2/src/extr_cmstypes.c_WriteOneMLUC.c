
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_8__ {size_t (* Tell ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_9__ {size_t* Sizes; size_t* Offsets; } ;
typedef TYPE_2__ _cmsDICelem ;


 int FALSE ;
 int TRUE ;
 int Type_MLU_Write (int ,struct _cms_typehandler_struct*,TYPE_1__*,void*,int) ;
 size_t stub1 (int ,TYPE_1__*) ;
 size_t stub2 (int ,TYPE_1__*) ;

__attribute__((used)) static
cmsBool WriteOneMLUC(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, const cmsMLU* mlu, cmsUInt32Number BaseOffset)
{
    cmsUInt32Number Before;



     if (mlu == ((void*)0)) {
        e ->Sizes[i] = 0;
        e ->Offsets[i] = 0;
        return TRUE;
    }

    Before = io ->Tell(ContextID, io);
    e ->Offsets[i] = Before - BaseOffset;

    if (!Type_MLU_Write(ContextID, self, io, (void*) mlu, 1)) return FALSE;

    e ->Sizes[i] = io ->Tell(ContextID, io) - Before;
    return TRUE;
}
