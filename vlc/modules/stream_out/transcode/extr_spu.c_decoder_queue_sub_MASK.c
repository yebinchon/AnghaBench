#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* p_next; } ;
typedef  TYPE_3__ subpicture_t ;
struct decoder_owner {TYPE_4__* id; } ;
struct TYPE_7__ {TYPE_3__** last; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__ spu; } ;
struct TYPE_9__ {TYPE_1__ fifo; } ;
typedef  TYPE_4__ sout_stream_id_sys_t ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 struct decoder_owner* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( decoder_t *p_dec, subpicture_t *p_spu )
{
    struct decoder_owner *p_owner = FUNC0( p_dec );
    sout_stream_id_sys_t *id = p_owner->id;

    FUNC1(&id->fifo.lock);
    *id->fifo.spu.last = p_spu;
    id->fifo.spu.last = &p_spu->p_next;
    FUNC2(&id->fifo.lock);
}