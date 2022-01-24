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
typedef  int /*<<< orphan*/  sound_sample ;
struct TYPE_3__ {int /*<<< orphan*/  imag; int /*<<< orphan*/  real; int /*<<< orphan*/  sintable; int /*<<< orphan*/  costable; int /*<<< orphan*/  bitReverse; } ;
typedef  TYPE_1__ fft_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(const sound_sample *input, float *output, fft_state *state) {
    /* Convert data from sound format to be ready for FFT */
    FUNC2(input, state->real, state->imag, state->bitReverse );

    /* Do the actual FFT */
    FUNC0(state->real, state->imag, state->costable, state->sintable);

    /* Convert the FFT output into intensities */
    FUNC1(state->real, state->imag, output);
}