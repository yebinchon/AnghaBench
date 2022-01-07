
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char gchar ;
struct TYPE_7__ {int location; int case_sensitive; int menu_lines; } ;
struct TYPE_6__ {char* display_name; } ;
struct TYPE_5__ {char separator; char* message; char* format; char* column_separator; int columns; int input_stream; int data_input_stream; int cancel; int cancel_source; int num_active_list; int active_list; int num_urgent_list; int urgent_list; int selected_line; } ;
typedef int Mode ;
typedef TYPE_1__ DmenuModePrivateData ;


 int FALSE ;
 int G_CALLBACK (int ) ;
 int O_RDONLY ;
 int STDIN_FILENO ;
 int TRUE ;
 int UINT32_MAX ;
 int async_read_cancel ;
 TYPE_4__ config ;
 TYPE_3__ dmenu_mode ;
 int errno ;
 scalar_t__ find_arg (char*) ;
 int find_arg_char (char*,char*) ;
 scalar_t__ find_arg_str (char*,char**) ;
 int find_arg_uint (char*,int *) ;
 int g_cancellable_connect (int ,int ,TYPE_1__*,int *) ;
 int g_cancellable_new () ;
 int g_data_input_stream_new (int ) ;
 int g_free (char*) ;
 int g_malloc0 (int) ;
 char* g_markup_printf_escaped (char*,char*,int ) ;
 int g_strerror (int ) ;
 int g_strsplit (char*,char*,int ) ;
 int g_unix_input_stream_new (int,int) ;
 int isatty (int) ;
 int * mode_get_private_data (int *) ;
 int mode_set_private_data (int *,int ) ;
 int open (char*,int ) ;
 int parse_ranges (char*,int *,int *) ;
 char* rofi_expand_path (char*) ;
 int rofi_view_error_dialog (char*,int) ;

__attribute__((used)) static int dmenu_mode_init ( Mode *sw )
{
    if ( mode_get_private_data ( sw ) != ((void*)0) ) {
        return TRUE;
    }
    mode_set_private_data ( sw, g_malloc0 ( sizeof ( DmenuModePrivateData ) ) );
    DmenuModePrivateData *pd = (DmenuModePrivateData *) mode_get_private_data ( sw );

    pd->separator = '\n';
    pd->selected_line = UINT32_MAX;

    find_arg_str ( "-mesg", &( pd->message ) );


    find_arg_char ( "-sep", &( pd->separator ) );

    find_arg_uint ( "-selected-row", &( pd->selected_line ) );

    pd->format = "s";


    find_arg_str ( "-format", &( pd->format ) );

    char *str = ((void*)0);
    find_arg_str ( "-u", &str );
    if ( str != ((void*)0) ) {
        parse_ranges ( str, &( pd->urgent_list ), &( pd->num_urgent_list ) );
    }

    str = ((void*)0);
    find_arg_str ( "-a", &str );
    if ( str != ((void*)0) ) {
        parse_ranges ( str, &( pd->active_list ), &( pd->num_active_list ) );
    }


    find_arg_uint ( "-l", &( config.menu_lines ) );

    str = ((void*)0);
    find_arg_str ( "-window-title", &str );
    if ( str ) {
        dmenu_mode.display_name = str;
    }





    if ( find_arg ( "-b" ) >= 0 ) {
        config.location = 6;
    }

    config.case_sensitive = TRUE;
    if ( find_arg ( "-i" ) >= 0 ) {
        config.case_sensitive = FALSE;
    }
    int fd = STDIN_FILENO;
    str = ((void*)0);
    if ( find_arg_str ( "-input", &str ) ) {
        char *estr = rofi_expand_path ( str );
        fd = open ( str, O_RDONLY );
        if ( fd < 0 ) {
            char *msg = g_markup_printf_escaped ( "Failed to open file: <b>%s</b>:\n\t<i>%s</i>", estr, g_strerror ( errno ) );
            rofi_view_error_dialog ( msg, TRUE );
            g_free ( msg );
            g_free ( estr );
            return TRUE;
        }
        g_free ( estr );
    }

    if ( !( fd == STDIN_FILENO && isatty ( fd ) == 1 ) ) {
        pd->cancel = g_cancellable_new ();
        pd->cancel_source = g_cancellable_connect ( pd->cancel, G_CALLBACK ( async_read_cancel ), pd, ((void*)0) );
        pd->input_stream = g_unix_input_stream_new ( fd, fd != STDIN_FILENO );
        pd->data_input_stream = g_data_input_stream_new ( pd->input_stream );
    }
    gchar *columns = ((void*)0);
    if ( find_arg_str ( "-display-columns", &columns ) ) {
        pd->columns = g_strsplit ( columns, ",", 0 );
        pd->column_separator = "\t";
        find_arg_str ( "-display-column-separator", &pd->column_separator );
    }
    return TRUE;
}
