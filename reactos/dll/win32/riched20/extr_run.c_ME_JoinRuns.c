
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int nCharOfs; scalar_t__ len; } ;
struct TYPE_15__ {TYPE_7__ run; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_2__ member; struct TYPE_17__* next; } ;
struct TYPE_16__ {int nCursors; TYPE_1__* pCursors; } ;
struct TYPE_14__ {int nOffset; TYPE_4__* pRun; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef TYPE_4__ ME_DisplayItem ;


 int ME_CheckCharOffsets (TYPE_3__*) ;
 int ME_DestroyDisplayItem (TYPE_4__*) ;
 int ME_GetParagraph (TYPE_4__*) ;
 int ME_Remove (TYPE_4__*) ;
 int ME_UpdateRunFlags (TYPE_3__*,TYPE_7__*) ;
 int assert (int) ;
 scalar_t__ diRun ;
 int mark_para_rewrap (TYPE_3__*,int ) ;

void ME_JoinRuns(ME_TextEditor *editor, ME_DisplayItem *p)
{
  ME_DisplayItem *pNext = p->next;
  int i;
  assert(p->type == diRun && pNext->type == diRun);
  assert(p->member.run.nCharOfs != -1);
  mark_para_rewrap(editor, ME_GetParagraph(p));


  for (i=0; i<editor->nCursors; i++) {
    if (editor->pCursors[i].pRun == pNext) {
      editor->pCursors[i].pRun = p;
      editor->pCursors[i].nOffset += p->member.run.len;
    }
  }

  p->member.run.len += pNext->member.run.len;
  ME_Remove(pNext);
  ME_DestroyDisplayItem(pNext);
  ME_UpdateRunFlags(editor, &p->member.run);
  ME_CheckCharOffsets(editor);
}
