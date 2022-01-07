
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_struct_t ;
typedef int UINT ;
typedef int HWND ;


 int SendMessageW (int ,int ,int ,int ) ;
 int oleui_msg_enddialog ;

__attribute__((used)) static void send_end_dialog_msg(HWND hdlg, ps_struct_t *ps_struct, UINT id)
{
    SendMessageW(hdlg, oleui_msg_enddialog, id, 0);
}
