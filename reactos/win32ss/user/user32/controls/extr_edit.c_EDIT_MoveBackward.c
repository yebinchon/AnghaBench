
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int selection_end; int style; char* text; int selection_start; } ;
typedef int INT ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,int,int,int ) ;
 int ES_MULTILINE ;
 int FALSE ;

__attribute__((used)) static void EDIT_MoveBackward(EDITSTATE *es, BOOL extend)
{
 INT e = es->selection_end;

 if (e) {
  e--;
  if ((es->style & ES_MULTILINE) && e &&
    (es->text[e - 1] == '\r') && (es->text[e] == '\n')) {
   e--;
   if (e && (es->text[e - 1] == '\r'))
    e--;
  }
 }
 EDIT_EM_SetSel(es, extend ? es->selection_start : e, e, FALSE);
 EDIT_EM_ScrollCaret(es);
}
