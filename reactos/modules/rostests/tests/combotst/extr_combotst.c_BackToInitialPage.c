
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int Back1But ;
 int * Buttons ;
 int DestroyWindow (int ) ;
 int * MessageButtons ;
 int NUMBERBUTTONS ;
 int NextBut ;
 int SW_HIDE ;
 int SW_SHOW ;
 int ShowWindow (int ,int ) ;
 int hwndEdit ;

VOID
BackToInitialPage()
    {
    int i;
    DestroyWindow(hwndEdit);
    for (i=0 ; i< NUMBERBUTTONS ; i++) {ShowWindow(Buttons[i],SW_SHOW);}
for (i=0;i<26;i++)ShowWindow(MessageButtons[i],SW_HIDE);
ShowWindow(Back1But,SW_HIDE);
ShowWindow(NextBut,SW_HIDE);
    }
