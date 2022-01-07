
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hFindFile; } ;
typedef TYPE_1__* LPLFNDTA ;
typedef int BOOL ;


 int FALSE ;
 int FindClose (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;

BOOL
WFFindClose(LPLFNDTA lpFind)
{
    BOOL bRet;
    if (lpFind->hFindFile == INVALID_HANDLE_VALUE) {
        return(FALSE);
    }

    bRet = FindClose(lpFind->hFindFile);


    lpFind->hFindFile = INVALID_HANDLE_VALUE;

    return(bRet);
}
