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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short const**) ; 
 unsigned short* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(uint32_t code, uint32_t *decomposed)
{
    int i, len;
    const unsigned short *rec = FUNC1(code);
    len = rec[0] >> 8;

    if (len == 0)
        return 0;

    rec++;
    for (i = 0; i < len; i++)
        decomposed[i] = FUNC0(&rec);

    return len;
}