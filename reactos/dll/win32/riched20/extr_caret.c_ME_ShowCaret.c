
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int texthost; scalar_t__ bHaveFocus; } ;
typedef TYPE_1__ ME_TextEditor ;


 int ITextHost_TxShowCaret (int ,int ) ;
 int ME_IsSelection (TYPE_1__*) ;
 int ME_MoveCaret (TYPE_1__*) ;
 int TRUE ;

void ME_ShowCaret(ME_TextEditor *ed)
{
  ME_MoveCaret(ed);
  if(ed->bHaveFocus && !ME_IsSelection(ed))
    ITextHost_TxShowCaret(ed->texthost, TRUE);
}
