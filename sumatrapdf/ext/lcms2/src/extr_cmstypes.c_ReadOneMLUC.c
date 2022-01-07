
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
typedef int cmsMLU ;
struct TYPE_7__ {int (* Seek ) (int ,TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_8__ {scalar_t__* Offsets; int * Sizes; } ;
typedef TYPE_2__ _cmsDICelem ;


 int FALSE ;
 int TRUE ;
 scalar_t__ Type_MLU_Read (int ,struct _cms_typehandler_struct*,TYPE_1__*,size_t*,int ) ;
 int stub1 (int ,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static
cmsBool ReadOneMLUC(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, cmsMLU** mlu)
{
    cmsUInt32Number nItems = 0;


    if (e -> Offsets[i] == 0 || e ->Sizes[i] == 0) {

        *mlu = ((void*)0);
        return TRUE;
    }

    if (!io -> Seek(ContextID, io, e -> Offsets[i])) return FALSE;

    *mlu = (cmsMLU*) Type_MLU_Read(ContextID, self, io, &nItems, e ->Sizes[i]);
    return *mlu != ((void*)0);
}
