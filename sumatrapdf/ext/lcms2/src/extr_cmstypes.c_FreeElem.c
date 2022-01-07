
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsContext ;
struct TYPE_3__ {int * Sizes; int * Offsets; } ;
typedef TYPE_1__ _cmsDICelem ;


 int _cmsFree (int ,int *) ;

__attribute__((used)) static
void FreeElem(cmsContext ContextID, _cmsDICelem* e)
{
    if (e ->Offsets != ((void*)0)) _cmsFree(ContextID, e -> Offsets);
    if (e ->Sizes != ((void*)0)) _cmsFree(ContextID, e -> Sizes);
    e->Offsets = e ->Sizes = ((void*)0);
}
