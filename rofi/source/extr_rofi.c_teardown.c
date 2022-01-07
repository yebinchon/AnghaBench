
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int display_early_cleanup () ;
 int g_debug (char*) ;
 int remove_pid_file (int) ;
 int rofi_view_cleanup () ;
 int textbox_cleanup () ;

__attribute__((used)) static void teardown ( int pfd )
{
    g_debug ( "Teardown" );

    textbox_cleanup ( );

    display_early_cleanup ();


    rofi_view_cleanup ();

    remove_pid_file ( pfd );
}
