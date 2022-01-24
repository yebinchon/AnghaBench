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
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*,size_t) ; 
 scalar_t__ FUNC4 (int,char*,size_t) ; 
 scalar_t__ FUNC5 (int,char const*,size_t,int) ; 

__attribute__((used)) static void FUNC6(int fd, const char *buffer, size_t n) {
        char check[n];

        FUNC0(FUNC2(fd, 0, SEEK_SET) == 0);
        FUNC0(FUNC1(fd, 0) >= 0);
        FUNC0(FUNC5(fd, buffer, n, 4) == (ssize_t) n);

        FUNC0(FUNC2(fd, 0, SEEK_CUR) == (off_t) n);
        FUNC0(FUNC1(fd, n) >= 0);

        FUNC0(FUNC2(fd, 0, SEEK_SET) == 0);
        FUNC0(FUNC4(fd, check, n) == (ssize_t) n);

        FUNC0(FUNC3(buffer, check, n) == 0);
}