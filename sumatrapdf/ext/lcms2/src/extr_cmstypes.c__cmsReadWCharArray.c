
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef size_t cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _cmsAssert (int ) ;
 int _cmsReadUInt16Number (int ,int *,scalar_t__*) ;

__attribute__((used)) static
cmsBool _cmsReadWCharArray(cmsContext ContextID, cmsIOHANDLER* io, cmsUInt32Number n, wchar_t* Array)
{
    cmsUInt32Number i;
    cmsUInt16Number tmp;

    _cmsAssert(io != ((void*)0));

    for (i=0; i < n; i++) {

        if (Array != ((void*)0)) {

            if (!_cmsReadUInt16Number(ContextID, io, &tmp)) return FALSE;
            Array[i] = (wchar_t) tmp;
        }
        else {
            if (!_cmsReadUInt16Number(ContextID, io, ((void*)0))) return FALSE;
        }

    }
    return TRUE;
}
