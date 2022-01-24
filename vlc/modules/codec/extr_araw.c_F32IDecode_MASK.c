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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (float) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( void *outp, const uint8_t *in, unsigned samples )
{
    float *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        union { float f; uint32_t u; } s;

#ifdef WORDS_BIGENDIAN
        s.u = GetDWLE( in );
#else
        s.u = FUNC0( in );
#endif
        if( FUNC3(!FUNC2(s.f)) )
            s.f = 0.f;
        *(out++) = s.f;
        in += 4;
    }
}