
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int top; int right; int left; } ;
struct TYPE_4__ {int exStyleFlags; TYPE_3__ rcFormat; scalar_t__ selofs; int texthost; } ;
typedef TYPE_1__ ME_TextEditor ;


 int ITextHost_TxGetClientRect (int ,TYPE_3__*) ;
 int WS_EX_CLIENTEDGE ;

__attribute__((used)) static void ME_SetDefaultFormatRect(ME_TextEditor *editor)
{
  ITextHost_TxGetClientRect(editor->texthost, &editor->rcFormat);
  editor->rcFormat.top += editor->exStyleFlags & WS_EX_CLIENTEDGE ? 1 : 0;
  editor->rcFormat.left += 1 + editor->selofs;
  editor->rcFormat.right -= 1;
}
