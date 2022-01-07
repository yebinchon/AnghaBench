
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
 int TRUE ;
 int WriteOneElem (int ,int *,int *,scalar_t__) ;

__attribute__((used)) static
cmsBool WriteOffsetArray(cmsContext ContextID, cmsIOHANDLER* io, _cmsDICarray* a, cmsUInt32Number Count, cmsUInt32Number Length)
{
    cmsUInt32Number i;

    for (i=0; i < Count; i++) {

        if (!WriteOneElem(ContextID, io, &a -> Name, i)) return FALSE;
        if (!WriteOneElem(ContextID, io, &a -> Value, i)) return FALSE;

        if (Length > 16) {

            if (!WriteOneElem(ContextID, io, &a -> DisplayName, i)) return FALSE;
        }

        if (Length > 24) {

            if (!WriteOneElem(ContextID, io, &a -> DisplayValue, i)) return FALSE;
        }
    }

    return TRUE;
}
