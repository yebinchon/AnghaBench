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

/* Variables and functions */
 scalar_t__ EBADF ; 
 int FUNC0 (char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static void FUNC4(const char* fd_s)
{
    int fd = FUNC0(fd_s);
    int ret;

    ret = FUNC3(fd, "Success", 8);
    FUNC1( ret == -1 && errno == EBADF, 
       "Wrong write result in child process on %d (%s)\n", fd, FUNC2(errno));
}