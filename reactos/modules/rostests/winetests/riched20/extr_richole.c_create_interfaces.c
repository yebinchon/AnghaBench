
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int ITextSelection ;
typedef int ITextDocument ;
typedef int IRichEditOle ;
typedef int HWND ;


 int EM_GETOLEINTERFACE ;
 int IID_ITextDocument ;
 int IRichEditOle_QueryInterface (int *,int *,void**) ;
 int ITextDocument_GetSelection (int *,int **) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int new_richedit (int *) ;

__attribute__((used)) static void create_interfaces(HWND *w, IRichEditOle **reOle, ITextDocument **txtDoc,
                              ITextSelection **txtSel)
{
  *w = new_richedit(((void*)0));
  SendMessageA(*w, EM_GETOLEINTERFACE, 0, (LPARAM)reOle);
  IRichEditOle_QueryInterface(*reOle, &IID_ITextDocument,
                                 (void **) txtDoc);
  ITextDocument_GetSelection(*txtDoc, txtSel);
}
