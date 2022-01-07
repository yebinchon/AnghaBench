
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int style; int hwndSelf; } ;
typedef int LPWSTR ;
typedef int HGLOBAL ;
typedef TYPE_1__ EDITSTATE ;


 int CF_UNICODETEXT ;
 int CloseClipboard () ;
 int EDIT_EM_ReplaceSel (TYPE_1__*,int ,int ,int ,int ) ;
 int ES_PASSWORD ;
 int ES_READONLY ;
 int GetClipboardData (int ) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int OpenClipboard (int ) ;
 int TRUE ;
 int empty_stringW ;

__attribute__((used)) static void EDIT_WM_Paste(EDITSTATE *es)
{
 HGLOBAL hsrc;
 LPWSTR src;


 if(es->style & ES_READONLY)
     return;

 OpenClipboard(es->hwndSelf);
 if ((hsrc = GetClipboardData(CF_UNICODETEXT))) {
  src = GlobalLock(hsrc);
  EDIT_EM_ReplaceSel(es, TRUE, src, TRUE, TRUE);
  GlobalUnlock(hsrc);
 }
        else if (es->style & ES_PASSWORD) {

            EDIT_EM_ReplaceSel(es, TRUE, empty_stringW, TRUE, TRUE);
        }
 CloseClipboard();
}
