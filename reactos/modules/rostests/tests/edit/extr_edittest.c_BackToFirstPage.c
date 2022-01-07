
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int Back1But ;
 int Back2But ;
 int MAXMESSAGEBUTTONS ;
 int * MessageButtons ;
 int NextBut ;
 int SW_HIDE ;
 int SW_SHOW ;
 int ShowWindow (int ,int ) ;

VOID
BackToFirstPage()
    {
        int i;
        for (i=0;i<26;i++)ShowWindow(MessageButtons[i],SW_SHOW);
        for(;i<MAXMESSAGEBUTTONS;i++)ShowWindow(MessageButtons[i],SW_HIDE);
        ShowWindow(Back2But,SW_HIDE);
        ShowWindow(Back1But,SW_SHOW);
        ShowWindow(NextBut,SW_SHOW);
    }
