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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(const char* fd_s)
{
    int fd = FUNC0(fd_s);
    char buffer[32];
    int ret;

    ret =FUNC6(fd, "Success", 8);
    FUNC3( ret == 8, "Couldn't write in child process on %d (%s)\n", fd, FUNC5(errno));
    FUNC1(fd, 0, SEEK_SET);
    FUNC3(FUNC4(fd, buffer, sizeof (buffer)) == 8, "Couldn't read back the data\n");
    FUNC3(FUNC2(buffer, "Success", 8) == 0, "Couldn't read back the data\n");
}