
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int style; int flags; scalar_t__ selection_start; int selection_end; int x_offset; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 scalar_t__ EDIT_CharFromPos (TYPE_1__*,int ,int ,int *) ;
 int EDIT_EM_PosFromChar (TYPE_1__*,int ,int) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 int EF_AFTER_WRAP ;
 int ES_MULTILINE ;
 int FALSE ;
 int HIWORD (int ) ;

__attribute__((used)) static void EDIT_MoveHome(EDITSTATE *es, BOOL extend, BOOL ctrl)
{
 INT e;


 if (!ctrl && (es->style & ES_MULTILINE))
  e = EDIT_CharFromPos(es, -es->x_offset,
   HIWORD(EDIT_EM_PosFromChar(es, es->selection_end, es->flags & EF_AFTER_WRAP)), ((void*)0));
 else
  e = 0;
 EDIT_EM_SetSel(es, extend ? es->selection_start : e, e, FALSE);
 EDIT_EM_ScrollCaret(es);
}
