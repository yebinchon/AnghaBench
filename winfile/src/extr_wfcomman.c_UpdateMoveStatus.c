
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPARAM ;
typedef scalar_t__ DWORD ;


 scalar_t__ DROPEFFECT_MOVE ;
 int SB_SETTEXT ;
 int SendMessage (int ,int ,int,int ) ;
 int * TEXT (char*) ;
 int hwndStatus ;

VOID
UpdateMoveStatus(DWORD dwEffect)
{
 SendMessage(hwndStatus, SB_SETTEXT, 2, (LPARAM)(dwEffect == DROPEFFECT_MOVE ? TEXT("MOVE PENDING") : ((void*)0)));
}
