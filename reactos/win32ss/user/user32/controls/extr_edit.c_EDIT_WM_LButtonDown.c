
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int hwndSelf; scalar_t__ region_posy; scalar_t__ region_posx; int selection_start; int bCaptureState; } ;
typedef int LRESULT ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int DWORD ;
typedef int BOOL ;


 int EDIT_CharFromPos (TYPE_1__*,int ,int ,int *) ;
 int EDIT_ConfinePoint (TYPE_1__*,int *,int *) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,int ,int ,int ) ;
 int EF_FOCUSED ;
 int MK_SHIFT ;
 int SetCapture (int ) ;
 int SetFocus (int ) ;
 int SetTimer (int ,int ,int,int *) ;
 int TRUE ;

__attribute__((used)) static LRESULT EDIT_WM_LButtonDown(EDITSTATE *es, DWORD keys, INT x, INT y)
{
 INT e;
 BOOL after_wrap;

 es->bCaptureState = TRUE;
 SetCapture(es->hwndSelf);
 EDIT_ConfinePoint(es, &x, &y);
 e = EDIT_CharFromPos(es, x, y, &after_wrap);
 EDIT_EM_SetSel(es, (keys & MK_SHIFT) ? es->selection_start : e, e, after_wrap);
 EDIT_EM_ScrollCaret(es);
 es->region_posx = es->region_posy = 0;
 SetTimer(es->hwndSelf, 0, 100, ((void*)0));

 if (!(es->flags & EF_FOCUSED))
            SetFocus(es->hwndSelf);

 return 0;
}
