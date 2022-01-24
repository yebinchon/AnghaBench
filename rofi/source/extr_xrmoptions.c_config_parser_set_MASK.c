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
typedef  enum ConfigSource { ____Placeholder_ConfigSource } ConfigSource ;
struct TYPE_4__ {unsigned int* num; int* snum; int /*<<< orphan*/ * charc; int /*<<< orphan*/ ** str; } ;
struct TYPE_5__ {int type; int source; TYPE_1__ value; int /*<<< orphan*/ * mem; } ;
typedef  TYPE_2__ XrmOption ;

/* Variables and functions */
 unsigned int FALSE ; 
 unsigned int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
#define  xrm_Boolean 132 
#define  xrm_Char 131 
#define  xrm_Number 130 
#define  xrm_SNumber 129 
#define  xrm_String 128 

__attribute__((used)) static void FUNC8 ( XrmOption *option, char *xrmValue, enum ConfigSource source )
{
    switch ( option->type )
    {
    case xrm_String:
        if ( ( option )->mem != NULL ) {
            FUNC3 ( option->mem );
            option->mem = NULL;
        }
        *( option->value.str ) = FUNC4 ( FUNC5 ( xrmValue ) );

        // Memory
        ( option )->mem = *( option->value.str );
        break;
    case xrm_Number:
        *( option->value.num ) = (unsigned int) FUNC2 ( xrmValue, NULL, 10 );
        break;
    case xrm_SNumber:
        *( option->value.snum ) = (int) FUNC1 ( xrmValue, NULL, 10 );
        break;
    case xrm_Boolean:
        if ( FUNC7 ( xrmValue ) > 0 &&
             FUNC0 ( xrmValue, "true" ) == 0 ) {
            *( option->value.num ) = TRUE;
        }
        else{
            *( option->value.num ) = FALSE;
        }
        break;
    case xrm_Char:
        *( option->value.charc ) = FUNC6 ( xrmValue );
        break;
    }
    option->source = source;
}