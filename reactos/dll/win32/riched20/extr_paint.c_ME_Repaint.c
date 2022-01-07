
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int texthost; } ;
typedef TYPE_1__ ME_TextEditor ;


 int FIXME (char*) ;
 int ITextHost_TxViewChange (int ,int ) ;
 int ME_UpdateScrollBar (TYPE_1__*) ;
 scalar_t__ ME_WrapMarkedParagraphs (TYPE_1__*) ;
 int TRUE ;

void ME_Repaint(ME_TextEditor *editor)
{
  if (ME_WrapMarkedParagraphs(editor))
  {
    ME_UpdateScrollBar(editor);
    FIXME("ME_Repaint had to call ME_WrapMarkedParagraphs\n");
  }
  ITextHost_TxViewChange(editor->texthost, TRUE);
}
