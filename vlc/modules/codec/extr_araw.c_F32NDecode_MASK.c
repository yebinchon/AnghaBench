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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3( void *outp, const uint8_t *in, unsigned samples )
{
    float *out = outp;

    for( size_t i = 0; i < samples; i++ )
    {
        FUNC1( out, in, sizeof(float) );
        if( FUNC2(!FUNC0(*out)) )
            *out = 0.f;
        out++;
        in += sizeof(float);
    }
}