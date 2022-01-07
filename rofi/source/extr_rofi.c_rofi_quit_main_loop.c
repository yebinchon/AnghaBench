
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_main_loop_quit (int ) ;
 int main_loop ;

void rofi_quit_main_loop ( void )
{
    g_main_loop_quit ( main_loop );
}
