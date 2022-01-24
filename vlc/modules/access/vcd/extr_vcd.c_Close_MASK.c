#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_6__ {int /*<<< orphan*/  vcddev; int /*<<< orphan*/  p_toc; TYPE_4__* titles; } ;
typedef  TYPE_2__ access_sys_t ;
struct TYPE_7__ {TYPE_2__* seekpoints; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( vlc_object_t *p_this )
{
    stream_t     *p_access = (stream_t *)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    for( size_t i = 0; i < FUNC0(p_sys->titles); i++ )
        FUNC1( p_sys->titles[i].seekpoints );

    FUNC3( p_sys->p_toc );

    FUNC2( p_this, p_sys->vcddev );
    FUNC1( p_sys );
}