
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int style; int hwndSelf; int * hwndListBox; scalar_t__ wheelDeltaRemainder; int selection_end; int selection_start; int flags; } ;
typedef int LRESULT ;
typedef int LONG ;
typedef int HWND ;
typedef TYPE_1__ EDITSTATE ;


 int CBS_DROPDOWN ;
 int CBS_SIMPLE ;
 int DestroyCaret () ;
 int EDIT_InvalidateText (TYPE_1__*,int ,int ) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EF_FOCUSED ;
 int EN_KILLFOCUS ;
 int ES_NOHIDESEL ;
 int GWL_STYLE ;
 int GetParent (int ) ;
 int GetWindowLong (int ,int ) ;
 int SendMessage (int ,int ,int ,int ) ;
 int WM_CBLOSTTEXTFOCUS ;

__attribute__((used)) static LRESULT EDIT_WM_KillFocus(EDITSTATE *es)
{
 HWND hCombo;
 LONG lStyles;

 es->flags &= ~EF_FOCUSED;
 DestroyCaret();
 if(!(es->style & ES_NOHIDESEL))
  EDIT_InvalidateText(es, es->selection_start, es->selection_end);


 es->wheelDeltaRemainder = 0;

 if (es->hwndListBox == ((void*)0))
  EDIT_NOTIFY_PARENT(es, EN_KILLFOCUS);
 else
 {
  hCombo = GetParent(es->hwndSelf);
  lStyles = GetWindowLong(hCombo, GWL_STYLE);
  if ((lStyles & CBS_DROPDOWN) || (lStyles & CBS_SIMPLE))
   SendMessage(hCombo, WM_CBLOSTTEXTFOCUS, 0, 0);
 }

 return 0;
}
