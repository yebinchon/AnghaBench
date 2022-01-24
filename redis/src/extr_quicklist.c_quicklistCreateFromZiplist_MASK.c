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
typedef  int /*<<< orphan*/  quicklist ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

quicklist *FUNC2(int fill, int compress,
                                      unsigned char *zl) {
    return FUNC0(FUNC1(fill, compress), zl);
}