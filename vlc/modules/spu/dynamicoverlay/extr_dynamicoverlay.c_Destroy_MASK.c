#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_8__ {struct TYPE_8__* psz_outputfile; struct TYPE_8__* psz_inputfile; int /*<<< orphan*/  lock; int /*<<< orphan*/  overlays; int /*<<< orphan*/  processed; int /*<<< orphan*/  pending; int /*<<< orphan*/  atomic; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  AdjustCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys = p_filter->p_sys;

    FUNC0( &p_sys->input );
    FUNC0( &p_sys->output );
    FUNC1( &p_sys->atomic );
    FUNC1( &p_sys->pending );
    FUNC1( &p_sys->processed );
    FUNC3( &p_sys->overlays );
    FUNC2( p_filter );

    FUNC5( p_filter, "overlay-input", AdjustCallback, p_sys );
    FUNC5( p_filter, "overlay-output", AdjustCallback, p_sys );

    FUNC6( &p_sys->lock );
    FUNC4( p_sys->psz_inputfile );
    FUNC4( p_sys->psz_outputfile );
    FUNC4( p_sys );
}