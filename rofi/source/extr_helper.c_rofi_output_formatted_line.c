
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 int fputc (char const,int ) ;
 int fputs (char const*,int ) ;
 int g_free (char*) ;
 char* g_shell_quote (char const*) ;
 int pango_parse_markup (char const*,int,int ,int *,char**,int *,int *) ;
 int stdout ;

void rofi_output_formatted_line ( const char *format, const char *string, int selected_line, const char *filter )
{
    for ( int i = 0; format && format[i]; i++ ) {
        if ( format[i] == 'i' ) {
            fprintf ( stdout, "%d", selected_line );
        }
        else if ( format[i] == 'd' ) {
            fprintf ( stdout, "%d", ( selected_line + 1 ) );
        }
        else if ( format[i] == 's' ) {
            fputs ( string, stdout );
        }
        else if ( format[i] == 'p' ) {
            char *esc = ((void*)0);
            pango_parse_markup(string, -1, 0, ((void*)0), &esc, ((void*)0), ((void*)0));
            if ( esc ){
                fputs ( esc, stdout );
                g_free ( esc );
            } else {
                fputs ( "invalid string" , stdout );
            }
        }
        else if ( format[i] == 'q' ) {
            char *quote = g_shell_quote ( string );
            fputs ( quote, stdout );
            g_free ( quote );
        }
        else if ( format[i] == 'f' ) {
            if ( filter ) {
                fputs ( filter, stdout );
            }
        }
        else if ( format[i] == 'F' ) {
            if ( filter ) {
                char *quote = g_shell_quote ( filter );
                fputs ( quote, stdout );
                g_free ( quote );
            }
        }
        else {
            fputc ( format[i], stdout );
        }
    }
    fputc ( '\n', stdout );
    fflush ( stdout );
}
