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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 

__attribute__((used)) static void FUNC1( char** start,
                               char** end )
{
    while( FUNC0( **start ) && *start != *end ) {
        (*start)++;
    }

    if( *start == *end )
        return;

    while( FUNC0(*(*end - 1) ) ) {
        (*end)--;
    }
}