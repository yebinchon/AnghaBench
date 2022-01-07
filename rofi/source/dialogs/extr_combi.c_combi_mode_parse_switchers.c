
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int combi_modi; } ;
struct TYPE_7__ {int * mode; void* disable; } ;
struct TYPE_6__ {int num_switchers; TYPE_2__* switchers; } ;
typedef int Mode ;
typedef TYPE_1__ CombiModePrivateData ;
typedef TYPE_2__ CombiMode ;


 void* FALSE ;
 TYPE_5__ config ;
 int g_free (char*) ;
 scalar_t__ g_realloc (TYPE_2__*,int) ;
 char* g_strdup (int ) ;
 int g_warning (char*,char*) ;
 TYPE_1__* mode_get_private_data (int *) ;
 int * rofi_collect_modi_search (char*) ;
 int * script_switcher_parse_setup (char*) ;
 char* strtok_r (char*,char const* const,char**) ;

__attribute__((used)) static void combi_mode_parse_switchers ( Mode *sw )
{
    CombiModePrivateData *pd = mode_get_private_data ( sw );
    char *savept = ((void*)0);

    char *switcher_str = g_strdup ( config.combi_modi );
    const char * const sep = ",#";

    for ( char *token = strtok_r ( switcher_str, sep, &savept ); token != ((void*)0);
          token = strtok_r ( ((void*)0), sep, &savept ) ) {

        pd->switchers = (CombiMode *) g_realloc ( pd->switchers,
                                                   sizeof ( CombiMode ) * ( pd->num_switchers + 1 ) );

        Mode *mode = rofi_collect_modi_search ( token );
        if ( mode ) {
            pd->switchers[pd->num_switchers].disable = FALSE;
            pd->switchers[pd->num_switchers++].mode = mode;
        }
        else {

            Mode *sw = script_switcher_parse_setup ( token );
            if ( sw != ((void*)0) ) {
                pd->switchers[pd->num_switchers].disable = FALSE;
                pd->switchers[pd->num_switchers++].mode = sw;
            }
            else {

                g_warning ( "Invalid script switcher: %s", token );
                token = ((void*)0);
            }
        }
    }

    g_free ( switcher_str );
}
