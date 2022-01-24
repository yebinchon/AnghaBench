#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t i_buffer; scalar_t__ p_buffer; } ;
typedef  TYPE_1__ block_t ;
typedef  int /*<<< orphan*/  audio_volume_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,size_t,float) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (size_t) ; 

__attribute__((used)) static void FUNC3(audio_volume_t *volume, block_t *block, float amp)
{
    float *buf = (float *)block->p_buffer;
    size_t length = block->i_buffer;

    if (amp == 1.0)
        return;

    /* Unaligned header */
    FUNC1(((uintptr_t)buf & 3) == 0);
    while (FUNC2((uintptr_t)buf & 12))
    {
        *(buf++) *= amp;
        length -= 4;
    }
    /* Unaligned footer */
    FUNC1((length & 3) == 0);
    while (FUNC2(length & 12))
    {
        length -= 4;
        buf[length / 4] *= amp;
    }

    FUNC0(buf, buf, length, amp);
    (void) volume;
}