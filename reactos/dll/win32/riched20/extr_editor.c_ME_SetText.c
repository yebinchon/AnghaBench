
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pBuffer; } ;
struct TYPE_5__ {int pDefaultStyle; } ;
typedef TYPE_2__ ME_TextEditor ;
typedef int LPWSTR ;
typedef int LONG ;
typedef scalar_t__ BOOL ;


 int CP_ACP ;
 int CP_UNICODE ;
 int ME_EndToUnicode (int ,int ) ;
 int ME_InsertTextFromCursor (TYPE_2__*,int ,int ,int,int ) ;
 int ME_ToUnicode (int ,void*,int*) ;

__attribute__((used)) static void ME_SetText(ME_TextEditor *editor, void *text, BOOL unicode)
{
  LONG codepage = unicode ? CP_UNICODE : CP_ACP;
  int textLen;

  LPWSTR wszText = ME_ToUnicode(codepage, text, &textLen);
  ME_InsertTextFromCursor(editor, 0, wszText, textLen, editor->pBuffer->pDefaultStyle);
  ME_EndToUnicode(codepage, wszText);
}
