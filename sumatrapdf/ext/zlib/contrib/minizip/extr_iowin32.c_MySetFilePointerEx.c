
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int LowPart; int HighPart; } ;
typedef int LONG ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ NO_ERROR ;
 int SetFilePointer (int ,int,int *,int) ;
 scalar_t__ SetFilePointerEx (int ,TYPE_1__,TYPE_1__*,int) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL MySetFilePointerEx(HANDLE hFile, LARGE_INTEGER pos, LARGE_INTEGER *newPos, DWORD dwMoveMethod)
{



    LONG lHigh = pos.HighPart;
    DWORD dwNewPos = SetFilePointer(hFile, pos.LowPart, &lHigh, dwMoveMethod);
    BOOL fOk = TRUE;
    if (dwNewPos == 0xFFFFFFFF)
        if (GetLastError() != NO_ERROR)
            fOk = FALSE;
    if ((newPos != ((void*)0)) && (fOk))
    {
        newPos->LowPart = dwNewPos;
        newPos->HighPart = lHigh;
    }
    return fOk;

}
