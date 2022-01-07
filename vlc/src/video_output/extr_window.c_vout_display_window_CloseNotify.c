
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_window_t ;


 int msg_Err (int *,char*) ;

__attribute__((used)) static void vout_display_window_CloseNotify(vout_window_t *window)
{


    msg_Err(window, "window closed");
}
