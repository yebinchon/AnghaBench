
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ selection_start; scalar_t__ selection_end; } ;
typedef scalar_t__ INT ;
typedef TYPE_1__ EDITSTATE ;
typedef int BOOL ;


 scalar_t__ EDIT_CallWordBreakProc (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ EDIT_EM_LineFromChar (TYPE_1__*,scalar_t__) ;
 scalar_t__ EDIT_EM_LineIndex (TYPE_1__*,scalar_t__) ;
 scalar_t__ EDIT_EM_LineLength (TYPE_1__*,scalar_t__) ;
 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,scalar_t__,scalar_t__,int ) ;
 int FALSE ;
 int WB_LEFT ;

__attribute__((used)) static void EDIT_MoveWordBackward(EDITSTATE *es, BOOL extend)
{
 INT s = es->selection_start;
 INT e = es->selection_end;
 INT l;
 INT ll;
 INT li;

 l = EDIT_EM_LineFromChar(es, e);
 ll = EDIT_EM_LineLength(es, e);
 li = EDIT_EM_LineIndex(es, l);
 if (e - li == 0) {
  if (l) {
   li = EDIT_EM_LineIndex(es, l - 1);
   e = li + EDIT_EM_LineLength(es, li);
  }
 } else {
  e = li + EDIT_CallWordBreakProc(es, li, e - li, ll, WB_LEFT);
 }
 if (!extend)
  s = e;
 EDIT_EM_SetSel(es, s, e, FALSE);
 EDIT_EM_ScrollCaret(es);
}
