
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* RegisterWindowMessageW (int ) ;
 int SZOLEUI_MSG_ENDDIALOGW ;
 int SZOLEUI_MSG_HELPW ;
 void* oleui_msg_enddialog ;
 void* oleui_msg_help ;

__attribute__((used)) static void register_messages(void)
{
    oleui_msg_help = RegisterWindowMessageW(SZOLEUI_MSG_HELPW);
    oleui_msg_enddialog = RegisterWindowMessageW(SZOLEUI_MSG_ENDDIALOGW);
}
