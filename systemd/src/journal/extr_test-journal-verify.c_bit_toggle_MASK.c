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
typedef  int uint64_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (int,int*,int,int) ; 
 int FUNC3 (int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(const char *fn, uint64_t p) {
        uint8_t b;
        ssize_t r;
        int fd;

        fd = FUNC1(fn, O_RDWR|O_CLOEXEC);
        FUNC0(fd >= 0);

        r = FUNC2(fd, &b, 1, p/8);
        FUNC0(r == 1);

        b ^= 1 << (p % 8);

        r = FUNC3(fd, &b, 1, p/8);
        FUNC0(r == 1);

        FUNC4(fd);
}