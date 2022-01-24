#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  Base; } ;
struct TYPE_10__ {TYPE_4__ ctx; int /*<<< orphan*/  alloc; } ;
struct TYPE_11__ {TYPE_2__ ppmd8; } ;
struct TYPE_9__ {int bytes_left; int* data; size_t offset; } ;
struct ar_archive_zip_uncomp {TYPE_3__ state; TYPE_1__ input; } ;

/* Variables and functions */
 scalar_t__ ERR_UNCOMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static uint32_t FUNC6(struct ar_archive_zip_uncomp *uncomp, void *buffer, uint32_t buffer_size, bool is_last_chunk)
{
    uint32_t bytes_done = 0;

    if (!uncomp->state.ppmd8.ctx.Base) {
        uint8_t order, size, method;
        if (uncomp->input.bytes_left < 2) {
            FUNC5("Insufficient data in compressed stream");
            return ERR_UNCOMP;
        }
        order = (uncomp->input.data[uncomp->input.offset] & 0x0F) + 1;
        size = ((uncomp->input.data[uncomp->input.offset] >> 4) | ((uncomp->input.data[uncomp->input.offset + 1] << 4) & 0xFF));
        method = uncomp->input.data[uncomp->input.offset + 1] >> 4;
        uncomp->input.bytes_left -= 2;
        uncomp->input.offset += 2;
        if (order < 2 || method > 2) {
            FUNC5("Invalid PPMd data stream");
            return ERR_UNCOMP;
        }
#ifndef PPMD8_FREEZE_SUPPORT
        if (order == 2) {
            FUNC5("PPMd freeze method isn't supported");
            return ERR_UNCOMP;
        }
#endif
        if (!FUNC0(&uncomp->state.ppmd8.ctx, (size + 1) << 20, &uncomp->state.ppmd8.alloc))
            return ERR_UNCOMP;
        if (!FUNC3(&uncomp->state.ppmd8.ctx))
            return ERR_UNCOMP;
        FUNC2(&uncomp->state.ppmd8.ctx, order, method);
    }

    while (bytes_done < buffer_size) {
        int symbol = FUNC1(&uncomp->state.ppmd8.ctx);
        if (symbol < 0) {
            FUNC5("Invalid PPMd data stream");
            return ERR_UNCOMP;
        }
        ((uint8_t *)buffer)[bytes_done++] = (uint8_t)symbol;
    }

    if (is_last_chunk) {
        int symbol = FUNC1(&uncomp->state.ppmd8.ctx);
        if (symbol != -1 || !FUNC4(&uncomp->state.ppmd8.ctx)) {
            FUNC5("Invalid PPMd data stream");
            return ERR_UNCOMP;
        }
    }

    return bytes_done;
}