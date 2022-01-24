#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_frame; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static block_t *FUNC2( stream_t *p_access, bool *restrict eof )
{
    access_sys_t *p_sys = p_access->p_sys;
    block_t *p_block = NULL;

    FUNC0( &p_sys->lock );
    p_block = p_sys->p_frame;
    //msg_Dbg( p_access, "sending frame %p", (void *)p_block );
    p_sys->p_frame = NULL;
    FUNC1( &p_sys->lock );

    (void) eof;
    return p_block;
}