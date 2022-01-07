
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int HMENU ;
typedef int DWORD ;


 scalar_t__ COMBO_ID ;
 int CreateWindowA (int ,char*,int,int,int,int,int,int ,int ,int *,int ) ;
 int WC_COMBOBOXA ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int hMainWnd ;

__attribute__((used)) static HWND create_combobox(DWORD style)
{
    return CreateWindowA(WC_COMBOBOXA, "Combo", WS_VISIBLE|WS_CHILD|style, 5, 5, 100, 100, hMainWnd, (HMENU)COMBO_ID, ((void*)0), 0);
}
