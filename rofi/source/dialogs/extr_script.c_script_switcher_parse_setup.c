
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _get_display_value; int * _preprocess_input; int * _get_completion; int _get_icon; int _get_message; int _token_match; int _destroy; int _result; int _get_num_entries; int _init; int (* free ) (TYPE_1__*) ;void* ed; void* name; } ;
typedef TYPE_1__ Mode ;


 int _get_display_value ;
 int fprintf (int ,char*,char const*,unsigned int) ;
 int g_free (char*) ;
 TYPE_1__* g_malloc0 (int) ;
 void* g_strdup (char const*) ;
 scalar_t__ rofi_expand_path (char*) ;
 int script_get_icon ;
 int script_get_message ;
 int script_mode_destroy ;
 int script_mode_get_num_entries ;
 int script_mode_init ;
 int script_mode_result ;
 int script_switcher_free (TYPE_1__*) ;
 int script_token_match ;
 int stderr ;
 char* strtok_r (char*,char const* const,char**) ;

Mode *script_switcher_parse_setup ( const char *str )
{
    Mode *sw = g_malloc0 ( sizeof ( *sw ) );
    char *endp = ((void*)0);
    char *parse = g_strdup ( str );
    unsigned int index = 0;
    const char *const sep = ":";
    for ( char *token = strtok_r ( parse, sep, &endp ); token != ((void*)0); token = strtok_r ( ((void*)0), sep, &endp ) ) {
        if ( index == 0 ) {
            sw->name = g_strdup ( token );
        }
        else if ( index == 1 ) {
            sw->ed = (void *) rofi_expand_path ( token );
        }
        index++;
    }
    g_free ( parse );
    if ( index == 2 ) {
        sw->free = script_switcher_free;
        sw->_init = script_mode_init;
        sw->_get_num_entries = script_mode_get_num_entries;
        sw->_result = script_mode_result;
        sw->_destroy = script_mode_destroy;
        sw->_token_match = script_token_match;
        sw->_get_message = script_get_message;
        sw->_get_icon = script_get_icon;
        sw->_get_completion = ((void*)0),
        sw->_preprocess_input = ((void*)0),
        sw->_get_display_value = _get_display_value;

        return sw;
    }
    fprintf ( stderr, "The script command '%s' has %u options, but needs 2: <name>:<script>.", str, index );
    script_switcher_free ( sw );
    return ((void*)0);
}
