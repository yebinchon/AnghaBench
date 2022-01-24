#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_7__ {int i_flags; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_DISCONTINUITY ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sout_stream_id_sys_t *id, block_t *block)
{
    bool marker = (block->i_flags & BLOCK_FLAG_DISCONTINUITY) != 0;

    block = FUNC0(block, 12, block->i_buffer);
    if (FUNC3(block == NULL))
        return VLC_ENOMEM;

    FUNC1(id, block, marker, block->i_pts);
    FUNC2(id, block);
    return VLC_SUCCESS;
}