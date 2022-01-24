#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  id; TYPE_3__* block; } ;
typedef  TYPE_1__ rtp_xiph_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_5__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_CORRUPTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3 (demux_t *demux, void *data)
{
    rtp_xiph_t *self = data;

    if (!data)
        return;
    if (self->block)
    {
        self->block->i_flags |= BLOCK_FLAG_CORRUPTED;
        FUNC0 (demux, self->id, self->block);
    }
    FUNC1 (demux, self->id);
    FUNC2 (self);
}