#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* p_pat; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
typedef  TYPE_3__ ts_pid_t ;
struct TYPE_10__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_7__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2( void *p_opaque, block_t *p_block )
{
    ts_pid_t *pat_pid = (ts_pid_t *) p_opaque;
    FUNC1( pat_pid->u.p_pat->handle, p_block->p_buffer );
    FUNC0( p_block );
}