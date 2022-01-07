
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {char* str; } ;
typedef TYPE_1__ GString ;
typedef TYPE_2__ GList ;


 int ERROR_MSG_MARKUP ;
 int EX_DATAERR ;
 int TRUE ;
 TYPE_2__* g_list_first (int ) ;
 int g_list_length (TYPE_2__*) ;
 TYPE_2__* g_list_next (TYPE_2__*) ;
 int g_string_append (TYPE_1__*,char*) ;
 int g_string_append_printf (TYPE_1__*,char*,int) ;
 int g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_new (char*) ;
 int list_of_error_msgs ;
 int rofi_set_return_code (int ) ;
 int rofi_view_error_dialog (char*,int ) ;

__attribute__((used)) static void show_error_dialog ()
{
    GString *emesg = g_string_new ( "The following errors were detected when starting rofi:\n" );
    GList *iter = g_list_first ( list_of_error_msgs );
    int index = 0;
    for (; iter != ((void*)0) && index < 2; iter = g_list_next ( iter ) ) {
        GString *msg = (GString *) ( iter->data );
        g_string_append ( emesg, "\n\n" );
        g_string_append ( emesg, msg->str );
        index++;
    }
    if ( g_list_length ( iter ) > 1 ) {
        g_string_append_printf ( emesg, "\nThere are <b>%d</b> more errors.", g_list_length ( iter ) - 1 );
    }
    rofi_view_error_dialog ( emesg->str, ERROR_MSG_MARKUP );
    g_string_free ( emesg, TRUE );
    rofi_set_return_code ( EX_DATAERR );

}
