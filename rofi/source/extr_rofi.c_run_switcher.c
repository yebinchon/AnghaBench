
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int filter; } ;
struct TYPE_10__ {char* name; } ;
struct TYPE_9__ {int str; } ;
typedef int RofiViewState ;
typedef size_t ModeMode ;
typedef TYPE_1__ GString ;


 int ERROR_MSG_MARKUP ;
 int FALSE ;
 TYPE_8__ config ;
 size_t curr_switcher ;
 int g_main_loop_quit (int ) ;
 int g_string_append (TYPE_1__*,char*) ;
 int g_string_free (TYPE_1__*,int ) ;
 TYPE_1__* g_string_new (char*) ;
 int main_loop ;
 int mode_init (TYPE_2__*) ;
 TYPE_2__** modi ;
 unsigned int num_modi ;
 int process_result ;
 int * rofi_view_create (TYPE_2__*,int ,int ,int ) ;
 int rofi_view_error_dialog (int ,int ) ;
 int * rofi_view_get_active () ;
 int rofi_view_set_active (int *) ;

__attribute__((used)) static void run_switcher ( ModeMode mode )
{

    for ( unsigned int i = 0; i < num_modi; i++ ) {
        if ( !mode_init ( modi[i] ) ) {
            GString *str = g_string_new ( "Failed to initialize the mode: " );
            g_string_append ( str, modi[i]->name );
            g_string_append ( str, "\n" );

            rofi_view_error_dialog ( str->str, ERROR_MSG_MARKUP );
            g_string_free ( str, FALSE );
            break;
        }
    }

    if ( rofi_view_get_active () != ((void*)0) ) {
        return;
    }
    curr_switcher = mode;
    RofiViewState * state = rofi_view_create ( modi[mode], config.filter, 0, process_result );
    if ( state ) {
        rofi_view_set_active ( state );
    }
    if ( rofi_view_get_active () == ((void*)0) ) {
        g_main_loop_quit ( main_loop );
    }
}
