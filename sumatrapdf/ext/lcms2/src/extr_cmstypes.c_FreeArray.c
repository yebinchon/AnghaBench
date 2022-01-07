
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsContext ;
struct TYPE_5__ {int * Offsets; } ;
struct TYPE_4__ {TYPE_2__ DisplayValue; TYPE_2__ DisplayName; TYPE_2__ Value; TYPE_2__ Name; } ;
typedef TYPE_1__ _cmsDICarray ;


 int FreeElem (int ,TYPE_2__*) ;

__attribute__((used)) static
void FreeArray(cmsContext ContextID, _cmsDICarray* a)
{
    if (a ->Name.Offsets != ((void*)0)) FreeElem(ContextID, &a->Name);
    if (a ->Value.Offsets != ((void*)0)) FreeElem(ContextID, &a ->Value);
    if (a ->DisplayName.Offsets != ((void*)0)) FreeElem(ContextID, &a->DisplayName);
    if (a ->DisplayValue.Offsets != ((void*)0)) FreeElem(ContextID, &a ->DisplayValue);
}
