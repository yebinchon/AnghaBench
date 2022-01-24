#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * sintable; int /*<<< orphan*/ * costable; int /*<<< orphan*/ * bitReverse; } ;
typedef  TYPE_1__ fft_state ;

/* Variables and functions */
 unsigned int FFT_BUFFER_SIZE ; 
 int PI ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (float) ; 

fft_state *FUNC4(void)
{
    fft_state *p_state;
    unsigned int i;

    p_state = FUNC1( sizeof(*p_state) );
    if(! p_state )
        return NULL;

    for(i = 0; i < FFT_BUFFER_SIZE; i++)
    {
        p_state->bitReverse[i] = FUNC2(i);
    }
    for(i = 0; i < FFT_BUFFER_SIZE / 2; i++)
    {
        float j = 2 * PI * i / FFT_BUFFER_SIZE;
        p_state->costable[i] = FUNC0(j);
        p_state->sintable[i] = FUNC3(j);
    }

    return p_state;
}