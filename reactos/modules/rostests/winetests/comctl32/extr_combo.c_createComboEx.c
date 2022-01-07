
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int CreateWindowExA (int ,int ,int *,int ,int ,int ,int,int,int ,int *,int ,int *) ;
 int WC_COMBOBOXEXA ;
 int hComboExParentWnd ;
 int hMainHinst ;

__attribute__((used)) static HWND createComboEx(DWORD style) {
   return CreateWindowExA(0, WC_COMBOBOXEXA, ((void*)0), style, 0, 0, 300, 300,
            hComboExParentWnd, ((void*)0), hMainHinst, ((void*)0));
}
