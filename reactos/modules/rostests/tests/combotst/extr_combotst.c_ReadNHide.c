
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int Code; } ;


 int BM_GETCHECK ;
 scalar_t__ BST_CHECKED ;
 int Back1But ;
 int * Buttons ;
 int ComboStyle ;
 int * MessageButtons ;
 int NUMBERBUTTONS ;
 int NUMBERCHECKS ;
 int NextBut ;
 int SW_HIDE ;
 int SW_SHOW ;
 scalar_t__ SendMessage (int ,int ,int ,int ) ;
 int ShowWindow (int ,int ) ;
 TYPE_1__* Styles ;

VOID
ReadNHide()
    {
    int i;
    ComboStyle = 0;
    for (i=0 ; i< NUMBERCHECKS ; i++)
        {
        if(BST_CHECKED == SendMessage(Buttons[i],BM_GETCHECK,0,0))
            ComboStyle |= Styles[i].Code;
        ShowWindow(Buttons[i],SW_HIDE);
        }

    for (; i< NUMBERBUTTONS ; i++)ShowWindow(Buttons[i],SW_HIDE);
    for (i=0 ; i< 26 ; i++) ShowWindow(MessageButtons[i],SW_SHOW);

    ShowWindow(Back1But,SW_SHOW);
    ShowWindow(NextBut,SW_SHOW);
    }
