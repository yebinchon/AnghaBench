
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _cmsDoubleTo15Fixed16 (int ,int ) ;
 int _cmsWriteUInt32Number (int ,int *,int ) ;

__attribute__((used)) static
cmsBool SaveOneChromaticity(cmsContext ContextID, cmsFloat64Number x, cmsFloat64Number y, cmsIOHANDLER* io)
{
    if (!_cmsWriteUInt32Number(ContextID, io, (cmsUInt32Number) _cmsDoubleTo15Fixed16(ContextID, x))) return FALSE;
    if (!_cmsWriteUInt32Number(ContextID, io, (cmsUInt32Number) _cmsDoubleTo15Fixed16(ContextID, y))) return FALSE;

    return TRUE;
}
