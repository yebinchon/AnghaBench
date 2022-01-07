
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int texthost; int bHaveFocus; } ;
typedef TYPE_1__ ME_TextEditor ;


 int DestroyCaret () ;
 int FALSE ;
 int ITextHost_TxShowCaret (int ,int ) ;
 scalar_t__ ME_IsSelection (TYPE_1__*) ;

void ME_HideCaret(ME_TextEditor *ed)
{
  if(!ed->bHaveFocus || ME_IsSelection(ed))
  {
    ITextHost_TxShowCaret(ed->texthost, FALSE);
    DestroyCaret();
  }
}
