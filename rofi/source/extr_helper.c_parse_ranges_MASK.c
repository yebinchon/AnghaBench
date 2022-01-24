#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rofi_range_pair {int dummy; } ;
typedef  int /*<<< orphan*/  rofi_range_pair ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char const* const,char**) ; 

void FUNC3 ( char *input, rofi_range_pair **list, unsigned int *length )
{
    char *endp;
    if ( input == NULL ) {
        return;
    }
    const char *const sep = ",";
    for ( char *token = FUNC2 ( input, sep, &endp ); token != NULL; token = FUNC2 ( NULL, sep, &endp ) ) {
        // Make space.
        *list = FUNC0 ( ( *list ), ( ( *length ) + 1 ) * sizeof ( struct rofi_range_pair ) );
        // Parse a single pair.
        FUNC1 ( token, &( ( *list )[*length] ) );

        ( *length )++;
    }
}