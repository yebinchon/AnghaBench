#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  _get_display_value; int /*<<< orphan*/ * _preprocess_input; int /*<<< orphan*/ * _get_completion; int /*<<< orphan*/  _get_icon; int /*<<< orphan*/  _get_message; int /*<<< orphan*/  _token_match; int /*<<< orphan*/  _destroy; int /*<<< orphan*/  _result; int /*<<< orphan*/  _get_num_entries; int /*<<< orphan*/  _init; int /*<<< orphan*/  (* free ) (TYPE_1__*) ;void* ed; void* name; } ;
typedef  TYPE_1__ Mode ;

/* Variables and functions */
 int /*<<< orphan*/  _get_display_value ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int) ; 
 void* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  script_get_icon ; 
 int /*<<< orphan*/  script_get_message ; 
 int /*<<< orphan*/  script_mode_destroy ; 
 int /*<<< orphan*/  script_mode_get_num_entries ; 
 int /*<<< orphan*/  script_mode_init ; 
 int /*<<< orphan*/  script_mode_result ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  script_token_match ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char*,char const* const,char**) ; 

Mode *FUNC7 ( const char *str )
{
    Mode              *sw    = FUNC2 ( sizeof ( *sw ) );
    char              *endp  = NULL;
    char              *parse = FUNC3 ( str );
    unsigned int      index  = 0;
    const char *const sep    = ":";
    for ( char *token = FUNC6 ( parse, sep, &endp ); token != NULL; token = FUNC6 ( NULL, sep, &endp ) ) {
        if ( index == 0 ) {
            sw->name = FUNC3 ( token );
        }
        else if ( index == 1 ) {
            sw->ed = (void *) FUNC4 ( token );
        }
        index++;
    }
    FUNC1 ( parse );
    if ( index == 2 ) {
        sw->free               = script_switcher_free;
        sw->_init              = script_mode_init;
        sw->_get_num_entries   = script_mode_get_num_entries;
        sw->_result            = script_mode_result;
        sw->_destroy           = script_mode_destroy;
        sw->_token_match       = script_token_match;
        sw->_get_message       = script_get_message;
        sw->_get_icon          = script_get_icon;
        sw->_get_completion    = NULL,
        sw->_preprocess_input  = NULL,
        sw->_get_display_value = _get_display_value;

        return sw;
    }
    FUNC0 ( stderr, "The script command '%s' has %u options, but needs 2: <name>:<script>.", str, index );
    FUNC5 ( sw );
    return NULL;
}