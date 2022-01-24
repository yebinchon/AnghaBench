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
struct TYPE_3__ {int start; int stop; } ;
typedef  TYPE_1__ rofi_range_pair ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*,char) ; 
 char* FUNC2 (char**,char const*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4 ( char  *input, rofi_range_pair  *item )
{
    // Skip leading blanks.
    while ( input != NULL && FUNC0(*input) )
        ++input;

    const char *sep[] = { "-", ":" };
    int         pythonic = ( FUNC1(input, ':') || input[0] == '-' ) ? 1 : 0;
    int         index = 0;

    for (  char *token = FUNC2 ( &input, sep[pythonic] ); token != NULL; token = FUNC2 ( &input, sep[pythonic] ) ) {
        if ( index == 0 ) {
            item->start = item->stop = (int) FUNC3 ( token, NULL, 10 );
            index++;
            continue;
        }

        if ( token[0] == '\0' ) {
            item->stop = -1;
            continue;
        }

        item->stop = (int) FUNC3 ( token, NULL, 10 );
        if ( pythonic ) {
            --item->stop;
        }
    }
}