
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_3__ {int * Sizes; int * Offsets; } ;
typedef TYPE_1__ _cmsDICelem ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteUInt32Number (int ,int *,int ) ;

__attribute__((used)) static
cmsBool WriteOneElem(cmsContext ContextID, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i)
{
    if (!_cmsWriteUInt32Number(ContextID, io, e->Offsets[i])) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, e ->Sizes[i])) return FALSE;

    return TRUE;
}
