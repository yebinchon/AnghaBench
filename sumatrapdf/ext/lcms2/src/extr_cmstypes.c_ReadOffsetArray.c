
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_3__ {int DisplayValue; int DisplayName; int Value; int Name; } ;
typedef TYPE_1__ _cmsDICarray ;


 int FALSE ;
 int ReadOneElem (int ,int *,int *,scalar_t__,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static
cmsBool ReadOffsetArray(cmsContext ContextID, cmsIOHANDLER* io, _cmsDICarray* a, cmsUInt32Number Count, cmsUInt32Number Length, cmsUInt32Number BaseOffset)
{
    cmsUInt32Number i;


    for (i=0; i < Count; i++) {

        if (!ReadOneElem(ContextID, io, &a -> Name, i, BaseOffset)) return FALSE;
        if (!ReadOneElem(ContextID, io, &a -> Value, i, BaseOffset)) return FALSE;

        if (Length > 16) {

            if (!ReadOneElem(ContextID, io, &a ->DisplayName, i, BaseOffset)) return FALSE;

        }

        if (Length > 24) {

            if (!ReadOneElem(ContextID, io, & a -> DisplayValue, i, BaseOffset)) return FALSE;
        }
    }
    return TRUE;
}
