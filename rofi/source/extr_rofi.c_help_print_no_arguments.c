
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {char* name; } ;


 int FALSE ;
 int TRUE ;
 TYPE_1__** available_modi ;
 char* color_bold ;
 char* color_green ;
 char* color_red ;
 char* color_reset ;
 int fileno (int ) ;
 int fprintf (int ,char*,...) ;
 int isatty (int ) ;
 TYPE_1__** modi ;
 unsigned int num_available_modi ;
 unsigned int num_modi ;
 int stderr ;
 int stdout ;

__attribute__((used)) static void help_print_no_arguments ( void )
{
    int is_term = isatty ( fileno ( stdout ) );

    fprintf ( stderr, "Rofi is unsure what to show.\n" );
    fprintf ( stderr, "Please specify the mode you want to show.\n\n" );
    fprintf ( stderr, "    %srofi%s -show %s{mode}%s\n\n",
              is_term ? color_bold : "", is_term ? color_reset : "",
              is_term ? color_green : "", is_term ? color_reset : "" );
    fprintf ( stderr, "The following modi are enabled:\n" );
    for ( unsigned int j = 0; j < num_modi; j++ ) {
        fprintf ( stderr, " * %s%s%s\n",
                  is_term ? color_green : "",
                  modi[j]->name,
                  is_term ? color_reset : "" );
    }
    fprintf ( stderr, "\nThe following can be enabled:\n" );
    for ( unsigned int i = 0; i < num_available_modi; i++ ) {
        gboolean active = FALSE;
        for ( unsigned int j = 0; j < num_modi; j++ ) {
            if ( modi[j] == available_modi[i] ) {
                active = TRUE;
                break;
            }
        }
        if ( !active ) {
            fprintf ( stderr, " * %s%s%s\n",
                      is_term ? color_red : "",
                      available_modi[i]->name,
                      is_term ? color_reset : "" );
        }
    }
    fprintf ( stderr, "\nTo activate a mode, add it to the list of modi in the %smodi%s setting.\n",
              is_term ? color_green : "", is_term ? color_reset : "" );
}
