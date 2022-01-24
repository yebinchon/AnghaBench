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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2( void *outp, const uint8_t *in, unsigned samples )
{
    int32_t *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
#ifdef WORDS_BIGENDIAN
        *(out++) = GetDWLE( in );
#else
        *(out++) = FUNC0( in );
#endif
        in += 4;
    }
}