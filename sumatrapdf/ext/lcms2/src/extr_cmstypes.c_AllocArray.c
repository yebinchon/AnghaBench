
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_5__ {int DisplayValue; int DisplayName; int Value; int Name; } ;
typedef TYPE_1__ _cmsDICarray ;


 int AllocElem (int ,int *,int) ;
 int FALSE ;
 int FreeArray (int ,TYPE_1__*) ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static
cmsBool AllocArray(cmsContext ContextID, _cmsDICarray* a, cmsUInt32Number Count, cmsUInt32Number Length)
{

    memset(a, 0, sizeof(_cmsDICarray));


    if (!AllocElem(ContextID, &a ->Name, Count)) goto Error;
    if (!AllocElem(ContextID, &a ->Value, Count)) goto Error;

    if (Length > 16) {
        if (!AllocElem(ContextID, &a -> DisplayName, Count)) goto Error;

    }
    if (Length > 24) {
        if (!AllocElem(ContextID, &a ->DisplayValue, Count)) goto Error;
    }
    return TRUE;

Error:
    FreeArray(ContextID, a);
    return FALSE;
}
