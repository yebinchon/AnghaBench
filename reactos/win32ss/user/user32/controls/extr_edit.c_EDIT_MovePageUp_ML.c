
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {short bottom; short top; } ;
struct TYPE_9__ {short selection_start; short selection_end; int flags; TYPE_1__ format_rect; } ;
typedef int LRESULT ;
typedef short INT ;
typedef TYPE_2__ EDITSTATE ;
typedef int BOOL ;


 short EDIT_CharFromPos (TYPE_2__*,short,short,int*) ;
 int EDIT_EM_PosFromChar (TYPE_2__*,short,int) ;
 int EDIT_EM_ScrollCaret (TYPE_2__*) ;
 int EDIT_EM_SetSel (TYPE_2__*,short,short,int) ;
 int EF_AFTER_WRAP ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;

__attribute__((used)) static void EDIT_MovePageUp_ML(EDITSTATE *es, BOOL extend)
{
 INT s = es->selection_start;
 INT e = es->selection_end;
 BOOL after_wrap = (es->flags & EF_AFTER_WRAP);
 LRESULT pos = EDIT_EM_PosFromChar(es, e, after_wrap);
 INT x = (short)LOWORD(pos);
 INT y = (short)HIWORD(pos);

 e = EDIT_CharFromPos(es, x,
  y - (es->format_rect.bottom - es->format_rect.top),
  &after_wrap);
 if (!extend)
  s = e;
 EDIT_EM_SetSel(es, s, e, after_wrap);
 EDIT_EM_ScrollCaret(es);
}
