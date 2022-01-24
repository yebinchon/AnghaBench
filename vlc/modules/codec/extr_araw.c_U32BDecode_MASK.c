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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC1( void *outp, const uint8_t *in, unsigned samples )
{
    uint32_t *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        *(out++) = FUNC0( in ) - 0x80000000;
        in += 4;
    }
}