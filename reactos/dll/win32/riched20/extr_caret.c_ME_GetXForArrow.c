
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int x; } ;
struct TYPE_18__ {int nWidth; TYPE_1__ pt; } ;
struct TYPE_17__ {int nOffset; TYPE_4__* pRun; } ;
struct TYPE_14__ {TYPE_8__ run; } ;
struct TYPE_16__ {TYPE_2__ member; } ;
struct TYPE_15__ {int nUDArrowX; scalar_t__ bCaretAtEnd; } ;
typedef TYPE_3__ ME_TextEditor ;
typedef TYPE_4__ ME_DisplayItem ;
typedef TYPE_5__ ME_Cursor ;


 TYPE_4__* ME_FindItemBack (TYPE_4__*,int ) ;
 scalar_t__ ME_PointFromChar (TYPE_3__*,TYPE_8__*,int ,int ) ;
 int TRUE ;
 int assert (TYPE_4__*) ;
 int diRun ;

__attribute__((used)) static int ME_GetXForArrow(ME_TextEditor *editor, ME_Cursor *pCursor)
{
  ME_DisplayItem *pRun = pCursor->pRun;
  int x;

  if (editor->nUDArrowX != -1)
    x = editor->nUDArrowX;
  else {
    if (editor->bCaretAtEnd)
    {
      pRun = ME_FindItemBack(pRun, diRun);
      assert(pRun);
      x = pRun->member.run.pt.x + pRun->member.run.nWidth;
    }
    else {
      x = pRun->member.run.pt.x;
      x += ME_PointFromChar(editor, &pRun->member.run, pCursor->nOffset, TRUE);
    }
    editor->nUDArrowX = x;
  }
  return x;
}
