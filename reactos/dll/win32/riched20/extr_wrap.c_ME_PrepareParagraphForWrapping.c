
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int editor; } ;
struct TYPE_12__ {TYPE_4__* next_para; scalar_t__ nRows; scalar_t__ nWidth; } ;
struct TYPE_13__ {int run; TYPE_1__ para; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__ member; struct TYPE_15__* next; struct TYPE_15__* prev; } ;
struct TYPE_14__ {int total_rows; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef TYPE_4__ ME_DisplayItem ;
typedef TYPE_5__ ME_Context ;


 scalar_t__ ME_CanJoinRuns (int *,int *) ;
 int ME_DestroyDisplayItem (TYPE_4__*) ;
 int ME_JoinRuns (int ,TYPE_4__*) ;
 int ME_Remove (TYPE_4__*) ;
 int assert (int) ;
 scalar_t__ diRun ;
 scalar_t__ diStartRow ;

__attribute__((used)) static void ME_PrepareParagraphForWrapping(ME_TextEditor *editor, ME_Context *c, ME_DisplayItem *tp) {
  ME_DisplayItem *p;

  tp->member.para.nWidth = 0;


  editor->total_rows -= tp->member.para.nRows;
  tp->member.para.nRows = 0;
  for (p = tp->next; p != tp->member.para.next_para; p = p->next) {
    if (p->type == diStartRow) {
      ME_DisplayItem *pRow = p;
      p = p->prev;
      ME_Remove(pRow);
      ME_DestroyDisplayItem(pRow);
    }
  }

  for (p = tp->next; p != tp->member.para.next_para; p = p->next) {
    assert(p->type != diStartRow);
    if (p->type == diRun) {
      while (p->next->type == diRun &&
             ME_CanJoinRuns(&p->member.run, &p->next->member.run)) {
        ME_JoinRuns(c->editor, p);
      }
    }
  }
}
