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
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int BLUE ; 
 int GREEN ; 
 int RED ; 
 int WHITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2( vlc_object_t *p_this, char const *psz_newval )
{
    int ret;
    if( !FUNC1( psz_newval, "red" ) )
        ret = RED;
    else if( !FUNC1( psz_newval, "blue" ) )
        ret = BLUE;
    else if( !FUNC1( psz_newval, "green" ) )
        ret = GREEN;
    else if( !FUNC1( psz_newval, "white" ) )
        ret = WHITE;
    else
    {
        FUNC0( p_this, "no valid ball color provided (%s)", psz_newval );
        ret = RED;
    }
    return ret;
}