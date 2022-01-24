#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/  p_text; scalar_t__ p_picture; scalar_t__ p_private; } ;
typedef  TYPE_1__ subpicture_region_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5( subpicture_region_t *p_region )
{
    if( !p_region )
        return;

    if( p_region->p_private )
        FUNC2( p_region->p_private );

    if( p_region->p_picture )
        FUNC1( p_region->p_picture );

    FUNC3( p_region->p_text );
    FUNC4( &p_region->fmt );
    FUNC0( p_region );
}