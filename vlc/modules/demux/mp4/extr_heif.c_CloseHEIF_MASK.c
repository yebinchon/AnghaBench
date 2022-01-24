#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  fmt; } ;
struct heif_private_t {int /*<<< orphan*/  p_title; TYPE_1__ current; scalar_t__ id; int /*<<< orphan*/  p_root; } ;
struct TYPE_4__ {int /*<<< orphan*/  out; scalar_t__ p_sys; } ;
typedef  TYPE_2__ demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct heif_private_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 ( vlc_object_t * p_this )
{
    demux_t *p_demux = (demux_t *)p_this;
    struct heif_private_t *p_sys = (void *) p_demux->p_sys;
    FUNC0( p_sys->p_root );
    if( p_sys->id )
        FUNC2( p_demux->out, p_sys->id );
    FUNC1( &p_sys->current.fmt );
    FUNC4( p_sys->p_title );
    FUNC3( p_sys );
}