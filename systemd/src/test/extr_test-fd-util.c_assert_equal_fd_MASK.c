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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  b ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(int fd1, int fd2) {

        for (;;) {
                uint8_t a[4096], b[4096];
                ssize_t x, y;

                x = FUNC2(fd1, a, sizeof(a));
                FUNC0(x >= 0);

                y = FUNC2(fd2, b, sizeof(b));
                FUNC0(y >= 0);

                FUNC0(x == y);

                if (x == 0)
                        break;

                FUNC0(FUNC1(a, b, x) == 0);
        }
}