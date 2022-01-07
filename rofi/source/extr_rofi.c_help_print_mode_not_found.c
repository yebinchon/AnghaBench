
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gboolean ;
struct TYPE_3__ {int name; } ;
typedef int GString ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__** available_modi ;
 int g_string_append_printf (int *,char*,char*,int ) ;
 int * g_string_new (char*) ;
 int g_string_printf (int *,char*,char const*) ;
 TYPE_1__** modi ;
 unsigned int num_available_modi ;
 unsigned int num_modi ;
 int rofi_add_error_message (int *) ;

__attribute__((used)) static void help_print_mode_not_found ( const char *mode )
{
    GString *str = g_string_new ("");
    g_string_printf(str, "Mode %s is not found.\nThe following modi are known:\n", mode );
    for ( unsigned int i = 0; i < num_available_modi; i++ ) {
        gboolean active = FALSE;
        for ( unsigned int j = 0; j < num_modi; j++ ) {
            if ( modi[j] == available_modi[i] ) {
                active = TRUE;
                break;
            }
        }
        g_string_append_printf (str, "        * %s%s\n",
                active ? "+" : "",
                available_modi[i]->name
                );
    }
    rofi_add_error_message ( str );
}
