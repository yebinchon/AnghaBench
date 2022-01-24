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
struct TYPE_3__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_4__ {int fd; int /*<<< orphan*/  p_marks; int /*<<< orphan*/  offsets; scalar_t__ p_meta; int /*<<< orphan*/  file_sizes; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5( vlc_object_t * p_this )
{
    stream_t *p_access = (stream_t*)p_this;
    access_sys_t *p_sys = p_access->p_sys;

    if( p_sys->fd != -1 )
        FUNC2( p_sys->fd );
    FUNC0( p_sys->file_sizes );

    if( p_sys->p_meta )
        FUNC4( p_sys->p_meta );

    FUNC1( p_sys->offsets );
    FUNC3( p_sys->p_marks );
}