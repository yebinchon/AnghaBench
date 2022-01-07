
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int hwndSelf; scalar_t__ region_posy; scalar_t__ region_posx; int bCaptureState; scalar_t__ selection_end; } ;
typedef int LRESULT ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;


 scalar_t__ EDIT_CallWordBreakProc (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ EDIT_EM_LineFromChar (TYPE_1__*,scalar_t__) ;
 scalar_t__ EDIT_EM_LineIndex (TYPE_1__*,scalar_t__) ;
 scalar_t__ EDIT_EM_LineLength (TYPE_1__*,scalar_t__) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 int FALSE ;
 int SetCapture (int ) ;
 int SetTimer (int ,int ,int,int *) ;
 int TRUE ;
 int WB_LEFT ;
 int WB_RIGHT ;

__attribute__((used)) static LRESULT EDIT_WM_LButtonDblClk(EDITSTATE *es)
{
 INT s;
 INT e = es->selection_end;
 INT l;
 INT li;
 INT ll;

 es->bCaptureState = TRUE;
 SetCapture(es->hwndSelf);

 l = EDIT_EM_LineFromChar(es, e);
 li = EDIT_EM_LineIndex(es, l);
 ll = EDIT_EM_LineLength(es, e);
 s = li + EDIT_CallWordBreakProc(es, li, e - li, ll, WB_LEFT);
 e = li + EDIT_CallWordBreakProc(es, li, e - li, ll, WB_RIGHT);
 EDIT_EM_SetSel(es, s, e, FALSE);
 EDIT_EM_ScrollCaret(es);
 es->region_posx = es->region_posy = 0;
 SetTimer(es->hwndSelf, 0, 100, ((void*)0));
 return 0;
}
