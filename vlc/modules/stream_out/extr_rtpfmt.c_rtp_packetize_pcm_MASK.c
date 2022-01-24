#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_id_sys_t ;
struct TYPE_8__ {unsigned int i_buffer; unsigned int i_length; int i_flags; unsigned int i_pts; unsigned int p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_DISCONTINUITY ; 
 int VLC_ENOMEM ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(sout_stream_id_sys_t *id, block_t *in)
{
    unsigned max = FUNC3(id);

    while (in->i_buffer > max)
    {
        unsigned duration = (in->i_length * max) / in->i_buffer;
        bool marker = (in->i_flags & BLOCK_FLAG_DISCONTINUITY) != 0;

        block_t *out = FUNC0(12 + max);
        if (FUNC7(out == NULL))
        {
            FUNC1(in);
            return VLC_ENOMEM;
        }

        FUNC4(id, out, marker, in->i_pts);
        FUNC2(out->p_buffer + 12, in->p_buffer, max);
        FUNC5(id, out);

        in->p_buffer += max;
        in->i_buffer -= max;
        in->i_pts += duration;
        in->i_length -= duration;
        in->i_flags &= ~BLOCK_FLAG_DISCONTINUITY;
    }

    return FUNC6(id, in); /* zero copy for the last frame */
}