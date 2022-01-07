
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt32Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_3__ {int * Offsets; int * Sizes; } ;
typedef TYPE_1__ _cmsDICelem ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _cmsCalloc (int ,int ,int) ;
 int _cmsFree (int ,int *) ;

__attribute__((used)) static
cmsBool AllocElem(cmsContext ContextID, _cmsDICelem* e, cmsUInt32Number Count)
{
    e->Offsets = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (e->Offsets == ((void*)0)) return FALSE;

    e->Sizes = (cmsUInt32Number *) _cmsCalloc(ContextID, Count, sizeof(cmsUInt32Number));
    if (e->Sizes == ((void*)0)) {

        _cmsFree(ContextID, e -> Offsets);
        return FALSE;
    }

    return TRUE;
}
