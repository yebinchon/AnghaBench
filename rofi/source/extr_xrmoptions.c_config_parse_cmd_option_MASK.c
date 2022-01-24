#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  charc; int /*<<< orphan*/ * num; int /*<<< orphan*/  str; int /*<<< orphan*/  snum; } ;
struct TYPE_5__ {int type; char* mem; void* source; TYPE_1__ value; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ XrmOption ;

/* Variables and functions */
 void* CONFIG_CMDLINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
#define  xrm_Boolean 132 
#define  xrm_Char 131 
#define  xrm_Number 130 
#define  xrm_SNumber 129 
#define  xrm_String 128 

__attribute__((used)) static void FUNC7 ( XrmOption *option )
{
    // Prepend a - to the option name.
    char *key = FUNC6 ( "-%s", option->name );
    switch ( option->type )
    {
    case xrm_Number:
        if ( FUNC4 ( key, option->value.num ) == TRUE ) {
            option->source = CONFIG_CMDLINE;
        }
        break;
    case xrm_SNumber:
        if ( FUNC2 (  key, option->value.snum ) == TRUE ) {
            option->source = CONFIG_CMDLINE;
        }
        break;
    case xrm_String:
        if ( FUNC3 (  key, option->value.str ) == TRUE ) {
            if ( option->mem != NULL ) {
                FUNC5 ( option->mem );
                option->mem = NULL;
            }
            option->source = CONFIG_CMDLINE;
        }
        break;
    case xrm_Boolean:
        if ( FUNC0 (  key ) >= 0 ) {
            *( option->value.num ) = TRUE;
            option->source         = CONFIG_CMDLINE;
        }
        else {
            FUNC5 ( key );
            key = FUNC6 ( "-no-%s", option->name );
            if ( FUNC0 (  key ) >= 0 ) {
                *( option->value.num ) = FALSE;
                option->source         = CONFIG_CMDLINE;
            }
        }
        break;
    case xrm_Char:
        if ( FUNC1 (  key, option->value.charc ) == TRUE ) {
            option->source = CONFIG_CMDLINE;
        }
        break;
    default:
        break;
    }
    FUNC5 ( key );
}