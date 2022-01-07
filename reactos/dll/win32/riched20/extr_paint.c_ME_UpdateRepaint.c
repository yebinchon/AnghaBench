
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nEventMask; int texthost; int * pCursors; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef scalar_t__ BOOL ;


 int ENM_CHANGE ;
 int EN_CHANGE ;
 int ITextHost_TxViewChange (int ,scalar_t__) ;
 int ME_EnsureVisible (TYPE_1__*,int *) ;
 int ME_SendOldNotify (TYPE_1__*,int ) ;
 int ME_SendSelChange (TYPE_1__*) ;
 int ME_UpdateScrollBar (TYPE_1__*) ;
 scalar_t__ ME_WrapMarkedParagraphs (TYPE_1__*) ;

void ME_UpdateRepaint(ME_TextEditor *editor, BOOL update_now)
{

  BOOL wrappedParagraphs;

  wrappedParagraphs = ME_WrapMarkedParagraphs(editor);
  if (wrappedParagraphs)
    ME_UpdateScrollBar(editor);


  ME_EnsureVisible(editor, &editor->pCursors[0]);

  ITextHost_TxViewChange(editor->texthost, update_now);

  ME_SendSelChange(editor);


  if(editor->nEventMask & ENM_CHANGE)
  {
    editor->nEventMask &= ~ENM_CHANGE;
    ME_SendOldNotify(editor, EN_CHANGE);
    editor->nEventMask |= ENM_CHANGE;
  }
}
