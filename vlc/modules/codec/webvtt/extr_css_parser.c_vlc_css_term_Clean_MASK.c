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
struct TYPE_3__ {scalar_t__ type; scalar_t__ function; int /*<<< orphan*/  psz; } ;
typedef  TYPE_1__ vlc_css_term_t ;

/* Variables and functions */
 scalar_t__ TYPE_FUNCTION ; 
 scalar_t__ TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2( vlc_css_term_t a )
{
    if( a.type >= TYPE_STRING )
        FUNC0( a.psz );

    if( a.type == TYPE_FUNCTION )
    {
        if( a.function )
            FUNC1( a.function );
    }
}