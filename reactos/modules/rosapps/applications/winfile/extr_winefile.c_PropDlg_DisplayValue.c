
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LPCWSTR ;
typedef int HWND ;


 int LB_ERR ;
 int LB_GETCURSEL ;
 int LB_GETITEMDATA ;
 int SendMessageW (int ,int ,int,int ) ;
 int SetWindowTextW (int ,scalar_t__) ;

__attribute__((used)) static void PropDlg_DisplayValue(HWND hlbox, HWND hedit)
{
 int idx = SendMessageW(hlbox, LB_GETCURSEL, 0, 0);

 if (idx != LB_ERR) {
  LPCWSTR pValue = (LPCWSTR)SendMessageW(hlbox, LB_GETITEMDATA, idx, 0);

  if (pValue)
   SetWindowTextW(hedit, pValue);
 }
}
