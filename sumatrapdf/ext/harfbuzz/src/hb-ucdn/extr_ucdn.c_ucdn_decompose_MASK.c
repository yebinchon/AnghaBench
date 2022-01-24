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
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(uint32_t code, uint32_t *a, uint32_t *b)
{
    const unsigned short *rec;
    int len;

    if (FUNC2(code, a, b))
        return 1;

    rec = FUNC1(code);
    len = rec[0] >> 8;

    if ((rec[0] & 0xff) != 0 || len == 0)
        return 0;

    rec++;
    *a = FUNC0(&rec);
    if (len > 1)
        *b = FUNC0(&rec);
    else
        *b = 0;

    return 1;
}