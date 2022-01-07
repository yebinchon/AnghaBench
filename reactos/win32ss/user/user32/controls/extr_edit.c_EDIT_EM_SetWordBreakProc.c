
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* word_break_proc; int style; } ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_BuildLineDefs_ML (TYPE_1__*,int ,int ,int ,int *) ;
 int EDIT_UpdateText (TYPE_1__*,int *,int ) ;
 int ES_AUTOHSCROLL ;
 int ES_MULTILINE ;
 int TRUE ;
 int get_text_length (TYPE_1__*) ;

__attribute__((used)) static void EDIT_EM_SetWordBreakProc(EDITSTATE *es, void *wbp)
{
 if (es->word_break_proc == wbp)
  return;

 es->word_break_proc = wbp;

 if ((es->style & ES_MULTILINE) && !(es->style & ES_AUTOHSCROLL)) {
  EDIT_BuildLineDefs_ML(es, 0, get_text_length(es), 0, ((void*)0));
  EDIT_UpdateText(es, ((void*)0), TRUE);
 }
}
