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
typedef  int /*<<< orphan*/  wbuffer ;
typedef  int /*<<< orphan*/  rbuffer ;

/* Variables and functions */
 int FUNC0 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int,char*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(unsigned flags) {
        char wbuffer[196*1024 - 7];
        char rbuffer[sizeof(wbuffer)];
        int fd;

        fd = FUNC0("foo", 3, flags);
        FUNC1(fd >= 0);

        FUNC7(rbuffer);
        FUNC1(FUNC4(fd, rbuffer, sizeof(rbuffer)) == 3);
        FUNC1(FUNC6(rbuffer, "foo"));

        fd = FUNC5(fd);

        fd = FUNC0("", 0, flags);
        FUNC1(fd >= 0);

        FUNC7(rbuffer);
        FUNC1(FUNC4(fd, rbuffer, sizeof(rbuffer)) == 0);
        FUNC1(FUNC6(rbuffer, ""));

        fd = FUNC5(fd);

        FUNC3(wbuffer, sizeof(wbuffer));

        fd = FUNC0(wbuffer, sizeof(wbuffer), flags);
        FUNC1(fd >= 0);

        FUNC7(rbuffer);
        FUNC1(FUNC4(fd, rbuffer, sizeof(rbuffer)) == sizeof(rbuffer));
        FUNC1(FUNC2(rbuffer, wbuffer, sizeof(rbuffer)) == 0);

        fd = FUNC5(fd);
}