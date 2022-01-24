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
typedef  int uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(uint8_t *dst, uint8_t *src, uint16_t *dc,
                          int width, int thresh, const uint16_t *dithers)
{
    for( int x = 0; x < width; x++, dc += x&1 ) {
        int pix = src[x]<<7;
        int delta = dc[0] - pix;
        int m = FUNC1(delta) * thresh >> 16;
        m = FUNC0(0, 127-m);
        m = m*m*delta >> 14;
        pix += m + dithers[x&7];
        dst[x] = FUNC2(pix>>7);
    }
}