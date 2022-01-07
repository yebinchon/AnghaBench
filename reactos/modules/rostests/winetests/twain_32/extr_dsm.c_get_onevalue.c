
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ItemType; int Item; } ;
typedef int TW_UINT32 ;
typedef int TW_UINT16 ;
typedef TYPE_1__ TW_ONEVALUE ;
typedef int TW_HANDLE ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL get_onevalue(TW_HANDLE hcontainer, TW_UINT32 *ret, TW_UINT16 *type)
{
    TW_ONEVALUE *onev;
    onev = GlobalLock(hcontainer);
    if (onev)
    {
        *ret = onev->Item;
        if (type)
            *type = onev->ItemType;
        GlobalUnlock(hcontainer);
        return TRUE;
    }
    else
        *ret = 0;
    return FALSE;
}
