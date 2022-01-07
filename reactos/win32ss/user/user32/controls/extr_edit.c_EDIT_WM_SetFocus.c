
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int style; int hwndSelf; int selection_end; int line_height; int selection_start; } ;
typedef int HDC ;
typedef TYPE_1__ EDITSTATE ;


 int CreateCaret (int ,int ,int,int ) ;
 int EDIT_InvalidateText (TYPE_1__*,int ,int ) ;
 int EDIT_NOTIFY_PARENT (TYPE_1__*,int ) ;
 int EDIT_SetCaretPos (TYPE_1__*,int ,int) ;
 int EDIT_WM_Paint (TYPE_1__*,int ) ;
 int EF_AFTER_WRAP ;
 int EF_FOCUSED ;
 int EN_SETFOCUS ;
 int ES_MULTILINE ;
 int ES_NOHIDESEL ;
 int GetDC (int ) ;
 scalar_t__ IsWindowVisible (int ) ;
 int ReleaseDC (int ,int ) ;
 int ShowCaret (int ) ;

__attribute__((used)) static void EDIT_WM_SetFocus(EDITSTATE *es)
{
 es->flags |= EF_FOCUSED;

        if (!(es->style & ES_NOHIDESEL))
            EDIT_InvalidateText(es, es->selection_start, es->selection_end);


        if (IsWindowVisible(es->hwndSelf) && !(es->style & ES_MULTILINE))
        {
            HDC hdc = GetDC(es->hwndSelf);
            EDIT_WM_Paint(es, hdc);
            ReleaseDC(es->hwndSelf, hdc);
        }

 CreateCaret(es->hwndSelf, 0, 1, es->line_height);
 EDIT_SetCaretPos(es, es->selection_end,
    es->flags & EF_AFTER_WRAP);
 ShowCaret(es->hwndSelf);
 EDIT_NOTIFY_PARENT(es, EN_SETFOCUS);
}
