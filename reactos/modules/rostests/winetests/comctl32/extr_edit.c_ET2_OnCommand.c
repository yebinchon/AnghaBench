
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int HWND ;


 scalar_t__ EN_UPDATE ;
 int ET2_check_change () ;
 int ID_EDITTEST2 ;

__attribute__((used)) static void ET2_OnCommand(HWND hwnd, int id, HWND hwndCtl, UINT codeNotify)
{
    if (id == ID_EDITTEST2 && codeNotify == EN_UPDATE)
        ET2_check_change();
}
