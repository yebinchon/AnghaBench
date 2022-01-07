
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_5__ {int * display_name; scalar_t__ private_data; } ;
struct TYPE_4__ {int do_markup; int num_active_list; int active_list; int num_urgent_list; int urgent_list; int * prompt; int * message; } ;
typedef TYPE_1__ ScriptModePrivateData ;
typedef TYPE_2__ Mode ;


 int g_free (int *) ;
 int * g_strdup (char*) ;
 int parse_ranges (char*,int *,int *) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void parse_header_entry ( Mode *sw, char *line, ssize_t length )
{
    ScriptModePrivateData *pd = (ScriptModePrivateData *) sw->private_data;
    ssize_t length_key = 0;
    while ( length_key <= length && line[length_key] != '\x1f' ) {
        length_key++;
    }

    if ( length_key < length ) {
        line[length_key] = '\0';
        char *value = line + length_key + 1;
        if ( strcasecmp ( line, "message" ) == 0 ) {
            g_free ( pd->message );
            pd->message = strlen ( value ) ? g_strdup ( value ) : ((void*)0);
        }
        else if ( strcasecmp ( line, "prompt" ) == 0 ) {
            g_free ( pd->prompt );
            pd->prompt = g_strdup ( value );
            sw->display_name = pd->prompt;
        }
        else if ( strcasecmp ( line, "markup-rows" ) == 0 ) {
            pd->do_markup = ( strcasecmp ( value, "true" ) == 0 );
        }
        else if ( strcasecmp ( line, "urgent" ) == 0 ) {
            parse_ranges ( value, &( pd->urgent_list ), &( pd->num_urgent_list ) );
        }
        else if ( strcasecmp ( line, "active" ) == 0 ) {
            parse_ranges ( value, &( pd->active_list ), &( pd->num_active_list ) );
        }
    }
}
