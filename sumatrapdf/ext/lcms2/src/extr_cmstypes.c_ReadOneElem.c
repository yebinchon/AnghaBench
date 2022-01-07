
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_3__ {scalar_t__* Offsets; scalar_t__* Sizes; } ;
typedef TYPE_1__ _cmsDICelem ;


 int FALSE ;
 int TRUE ;
 int _cmsReadUInt32Number (int ,int *,scalar_t__*) ;

__attribute__((used)) static
cmsBool ReadOneElem(cmsContext ContextID, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, cmsUInt32Number BaseOffset)
{
    if (!_cmsReadUInt32Number(ContextID, io, &e->Offsets[i])) return FALSE;
    if (!_cmsReadUInt32Number(ContextID, io, &e ->Sizes[i])) return FALSE;


    if (e ->Offsets[i] > 0)
        e ->Offsets[i] += BaseOffset;
    return TRUE;
}
