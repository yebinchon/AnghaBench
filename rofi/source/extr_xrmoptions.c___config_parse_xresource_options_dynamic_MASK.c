#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_xrm_database_t ;
typedef  enum ConfigSource { ____Placeholder_ConfigSource } ConfigSource ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 TYPE_1__* extra_options ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 unsigned int num_extra_options ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static void FUNC5 ( xcb_xrm_database_t *xDB, enum ConfigSource source )
{
    const char * namePrefix = "rofi";

    for ( unsigned int i = 0; i < num_extra_options; ++i ) {
        char *name;

        name = FUNC3 ( "%s.%s", namePrefix, extra_options[i].name );
        char *xrmValue = NULL;
        if ( FUNC4 ( xDB, name, NULL, &xrmValue ) == 0 ) {
            FUNC0 ( &( extra_options[i] ), xrmValue, source );
        }
        if ( xrmValue ) {
            FUNC1 ( xrmValue );
        }

        FUNC2 ( name );
    }
}