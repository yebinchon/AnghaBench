
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef size_t cmsUInt32Number ;
struct TYPE_8__ {size_t (* Tell ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_9__ {size_t* Offsets; size_t* Sizes; } ;
typedef TYPE_2__ _cmsDICelem ;


 int FALSE ;
 int TRUE ;
 int _cmsWriteWCharArray (int ,TYPE_1__*,size_t,int const*) ;
 size_t mywcslen (int const*) ;
 size_t stub1 (int ,TYPE_1__*) ;
 size_t stub2 (int ,TYPE_1__*) ;

__attribute__((used)) static
cmsBool WriteOneWChar(cmsContext ContextID, cmsIOHANDLER* io, _cmsDICelem* e, cmsUInt32Number i, const wchar_t * wcstr, cmsUInt32Number BaseOffset)
{
    cmsUInt32Number Before = io ->Tell(ContextID, io);
    cmsUInt32Number n;

    e ->Offsets[i] = Before - BaseOffset;

    if (wcstr == ((void*)0)) {
        e ->Sizes[i] = 0;
        e ->Offsets[i] = 0;
        return TRUE;
    }

    n = mywcslen(wcstr);
    if (!_cmsWriteWCharArray(ContextID, io, n, wcstr)) return FALSE;

    e ->Sizes[i] = io ->Tell(ContextID, io) - Before;
    return TRUE;
}
