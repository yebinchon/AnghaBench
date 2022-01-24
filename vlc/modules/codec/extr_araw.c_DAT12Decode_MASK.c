#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void FUNC2( void *outp, const uint8_t *in, unsigned samples )
{
    int16_t *out = outp;

    while( samples >= 2 )
    {
        *(out++) = FUNC1(FUNC0(in) >> 4);
        *(out++) = FUNC1(FUNC0(in + 1) & ~0xF000);
        in += 3;
        samples -= 2;
    }

    if( samples )
        *(out++) = FUNC1(FUNC0(in) >> 4);
}