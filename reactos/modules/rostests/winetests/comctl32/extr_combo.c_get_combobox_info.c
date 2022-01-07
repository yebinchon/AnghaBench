
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; } ;
typedef int HWND ;
typedef TYPE_1__ COMBOBOXINFO ;
typedef int BOOL ;


 int GetComboBoxInfo (int ,TYPE_1__*) ;
 int GetLastError () ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static void get_combobox_info(HWND hwnd, COMBOBOXINFO *info)
{
    BOOL ret;

    info->cbSize = sizeof(*info);
    ret = GetComboBoxInfo(hwnd, info);
    ok(ret, "Failed to get combobox info structure, error %d\n", GetLastError());
}
