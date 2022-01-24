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
typedef  int /*<<< orphan*/  va_list ;
typedef  scalar_t__ locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  LC_NUMERIC_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (char**,char const*,int /*<<< orphan*/ ) ; 

int FUNC4( char **ret, const char *format, va_list ap )
{
    locale_t loc = FUNC1( LC_NUMERIC_MASK, "C", NULL );
    locale_t oldloc = FUNC2( loc );

    int i_rc = FUNC3( ret, format, ap );

    if ( loc != (locale_t)0 )
    {
        FUNC2( oldloc );
        FUNC0( loc );
    }

    return i_rc;
}