
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t selection_end; char* text; int style; size_t selection_start; } ;
typedef size_t INT ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int EDIT_EM_ScrollCaret (TYPE_1__*) ;
 int EDIT_EM_SetSel (TYPE_1__*,size_t,size_t,int ) ;
 int ES_MULTILINE ;
 int FALSE ;

__attribute__((used)) static void EDIT_MoveForward(EDITSTATE *es, BOOL extend)
{
 INT e = es->selection_end;

 if (es->text[e]) {
  e++;
  if ((es->style & ES_MULTILINE) && (es->text[e - 1] == '\r')) {
   if (es->text[e] == '\n')
    e++;
   else if ((es->text[e] == '\r') && (es->text[e + 1] == '\n'))
    e += 2;
  }
 }
 EDIT_EM_SetSel(es, extend ? es->selection_start : e, e, FALSE);
 EDIT_EM_ScrollCaret(es);
}
