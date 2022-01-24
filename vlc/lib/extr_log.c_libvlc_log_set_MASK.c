#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libvlc_log_cb ;
struct TYPE_6__ {void* data; int /*<<< orphan*/  cb; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_libvlc_int; TYPE_1__ log; } ;
typedef  TYPE_2__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  libvlc_log_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC2 (libvlc_instance_t *inst, libvlc_log_cb cb, void *data)
{
    FUNC0 (inst); /* <- Barrier before modifying the callback */
    inst->log.cb = cb;
    inst->log.data = data;
    FUNC1(inst->p_libvlc_int, &libvlc_log_ops, inst);
}