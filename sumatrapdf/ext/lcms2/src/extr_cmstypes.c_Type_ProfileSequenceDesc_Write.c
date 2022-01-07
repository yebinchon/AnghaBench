
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _cms_typehandler_struct {int dummy; } ;
typedef size_t cmsUInt32Number ;
struct TYPE_3__ {size_t n; TYPE_2__* seq; } ;
typedef TYPE_1__ cmsSEQ ;
struct TYPE_4__ {size_t deviceMfg; size_t deviceModel; size_t technology; int Model; int Manufacturer; int attributes; } ;
typedef TYPE_2__ cmsPSEQDESC ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int SaveDescription (int ,struct _cms_typehandler_struct*,int *,int ) ;
 int TRUE ;
 int _cmsWriteUInt32Number (int ,int *,size_t) ;
 int _cmsWriteUInt64Number (int ,int *,int *) ;
 int cmsUNUSED_PARAMETER (size_t) ;

__attribute__((used)) static
cmsBool Type_ProfileSequenceDesc_Write(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, void* Ptr, cmsUInt32Number nItems)
{
    cmsSEQ* Seq = (cmsSEQ*) Ptr;
    cmsUInt32Number i;

    if (!_cmsWriteUInt32Number(ContextID, io, Seq->n)) return FALSE;

    for (i=0; i < Seq ->n; i++) {

        cmsPSEQDESC* sec = &Seq -> seq[i];

        if (!_cmsWriteUInt32Number(ContextID, io, sec ->deviceMfg)) return FALSE;
        if (!_cmsWriteUInt32Number(ContextID, io, sec ->deviceModel)) return FALSE;
        if (!_cmsWriteUInt64Number(ContextID, io, &sec ->attributes)) return FALSE;
        if (!_cmsWriteUInt32Number(ContextID, io, sec ->technology)) return FALSE;

        if (!SaveDescription(ContextID, self, io, sec ->Manufacturer)) return FALSE;
        if (!SaveDescription(ContextID, self, io, sec ->Model)) return FALSE;
    }

     return TRUE;

     cmsUNUSED_PARAMETER(nItems);
}
