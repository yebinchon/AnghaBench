
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;


 int BM_GETCHECK ;
 scalar_t__ BST_CHECKED ;
 int Back1But ;
 int * Buttons ;
 int EditStyle ;
 int * EditStyles ;
 int * MessageButtons ;
 int NUMBERBUTTONS ;
 int NextBut ;
 int SW_HIDE ;
 int SW_SHOW ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;
 int ShowWindow (int ,int ) ;

VOID
ReadNHide()
    {
        int i;
        EditStyle = 0;
        for (i=0 ; i< 19 ; i++)
        {
        if(BST_CHECKED == SendMessage(Buttons[i],BM_GETCHECK,0,0))
        EditStyle |= EditStyles[i];
        ShowWindow(Buttons[i],SW_HIDE);
        }

        for (; i< NUMBERBUTTONS ; i++)ShowWindow(Buttons[i],SW_HIDE);
        for (i=0 ; i< 26 ; i++) ShowWindow(MessageButtons[i],SW_SHOW);

        ShowWindow(Back1But,SW_SHOW);
        ShowWindow(NextBut,SW_SHOW);
    }
