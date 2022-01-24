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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 

unsigned short FUNC1(FILE * f, int bigendian)
{
    unsigned char c1, c2;
    FUNC0(&c1, 1, 1, f);
    FUNC0(&c2, 1, 1, f);
    if (bigendian) {
        return (c1 << 8) + c2;
    } else {
        return (c2 << 8) + c1;
    }
}