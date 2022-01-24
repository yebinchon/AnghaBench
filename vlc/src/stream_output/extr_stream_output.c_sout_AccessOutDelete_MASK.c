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
struct TYPE_5__ {int /*<<< orphan*/  psz_path; int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  psz_access; scalar_t__ p_module; } ;
typedef  TYPE_1__ sout_access_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4( sout_access_out_t *p_access )
{
    if( p_access->p_module )
    {
        FUNC2( p_access, p_access->p_module );
    }
    FUNC1( p_access->psz_access );

    FUNC0( p_access->p_cfg );

    FUNC1( p_access->psz_path );

    FUNC3(p_access);
}