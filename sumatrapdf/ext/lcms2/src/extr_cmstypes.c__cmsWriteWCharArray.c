
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef scalar_t__ cmsUInt32Number ;
typedef int cmsUInt16Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsAssert (int) ;
 int _cmsWriteUInt16Number (int ,int *,int ) ;

__attribute__((used)) static
cmsBool _cmsWriteWCharArray(cmsContext ContextID, cmsIOHANDLER* io, cmsUInt32Number n, const wchar_t* Array)
{
    cmsUInt32Number i;

    _cmsAssert(io != ((void*)0));
    _cmsAssert(!(Array == ((void*)0) && n > 0));

    for (i=0; i < n; i++) {
        if (!_cmsWriteUInt16Number(ContextID, io, (cmsUInt16Number) Array[i])) return FALSE;
    }

    return TRUE;
}
