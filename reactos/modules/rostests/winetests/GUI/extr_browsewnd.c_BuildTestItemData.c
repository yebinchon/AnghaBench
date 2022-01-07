
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szRunCmd; int szName; } ;
typedef int TEST_ITEM ;
typedef TYPE_1__* PTEST_ITEM ;
typedef int LPWSTR ;


 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int MAX_PATH ;
 int MAX_RUN_CMD ;
 int wcsncpy (int ,int ,int ) ;

__attribute__((used)) static PTEST_ITEM
BuildTestItemData(LPWSTR lpName,
                  LPWSTR lpRunCmd)
{
    PTEST_ITEM pItem;

    pItem = (PTEST_ITEM)HeapAlloc(GetProcessHeap(),
                                  0,
                                  sizeof(TEST_ITEM));
    if (pItem)
    {
        if (lpName)
        {
            wcsncpy(pItem->szName, lpName, MAX_PATH);
        }
        if (lpRunCmd)
        {
            wcsncpy(pItem->szRunCmd, lpRunCmd, MAX_RUN_CMD);
        }
    }

    return pItem;
}
