
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hloc32W; scalar_t__ hlocapp; scalar_t__ hloc32A; struct TYPE_6__* undo_text; int hwndSelf; struct TYPE_6__* next; struct TYPE_6__* first_line_def; } ;
typedef int LRESULT ;
typedef TYPE_1__ LINEDEF ;
typedef TYPE_1__ EDITSTATE ;


 int EDIT_InvalidateUniscribeData (TYPE_1__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int LocalFree (scalar_t__) ;
 int SetWindowLongPtrW (int ,int ,int ) ;

__attribute__((used)) static LRESULT EDIT_WM_NCDestroy(EDITSTATE *es)
{
 LINEDEF *pc, *pp;


        if (es->hloc32W && (es->hloc32W != es->hlocapp)) {
  LocalFree(es->hloc32W);
 }
        if (es->hloc32A && (es->hloc32A != es->hlocapp)) {
  LocalFree(es->hloc32A);
 }
 EDIT_InvalidateUniscribeData(es);
 pc = es->first_line_def;
 while (pc)
 {
  pp = pc->next;
  HeapFree(GetProcessHeap(), 0, pc);
  pc = pp;
 }

 SetWindowLongPtrW( es->hwndSelf, 0, 0 );
 HeapFree(GetProcessHeap(), 0, es->undo_text);
 HeapFree(GetProcessHeap(), 0, es);

 return 0;
}
