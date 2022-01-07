
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_struct_t ;
typedef int HWND ;


 int update_as_icon (int ,int *) ;
 int update_result_text (int ,int *) ;

__attribute__((used)) static void selection_change(HWND hdlg, ps_struct_t *ps_struct)
{
    update_as_icon(hdlg, ps_struct);
    update_result_text(hdlg, ps_struct);
}
