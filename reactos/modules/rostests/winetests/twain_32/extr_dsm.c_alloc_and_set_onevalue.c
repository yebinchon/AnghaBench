
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Item; int ItemType; } ;
typedef int TW_UINT32 ;
typedef int TW_UINT16 ;
typedef TYPE_1__ TW_ONEVALUE ;
typedef scalar_t__ TW_HANDLE ;


 scalar_t__ GlobalAlloc (int ,int) ;
 int GlobalFree (scalar_t__) ;
 TYPE_1__* GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;

__attribute__((used)) static TW_HANDLE alloc_and_set_onevalue(TW_UINT32 val, TW_UINT16 type)
{
    TW_HANDLE hcontainer;
    TW_ONEVALUE *onev;
    hcontainer = GlobalAlloc(0, sizeof(*onev));
    if (hcontainer)
    {
        onev = GlobalLock(hcontainer);
        if (onev)
        {
            onev->ItemType = type;
            onev->Item = val;
            GlobalUnlock(hcontainer);
        }
        else
        {
            GlobalFree(hcontainer);
            hcontainer = 0;
        }
    }
    return hcontainer;
}
