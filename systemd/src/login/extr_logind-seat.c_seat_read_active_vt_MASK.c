#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  size_t ssize_t ;
struct TYPE_8__ {TYPE_1__* manager; } ;
struct TYPE_7__ {int /*<<< orphan*/  console_active_fd; } ;
typedef  TYPE_2__ Seat ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 

int FUNC10(Seat *s) {
        char t[64];
        ssize_t k;
        int vtnr;

        FUNC0(s);

        if (!FUNC6(s))
                return 0;

        if (FUNC3(s->manager->console_active_fd, SEEK_SET, 0) < 0)
                return FUNC2(errno, "lseek on console_active_fd failed: %m");

        k = FUNC4(s->manager->console_active_fd, t, sizeof(t)-1);
        if (k <= 0) {
                FUNC1("Failed to read current console: %s", k < 0 ? FUNC7(errno) : "EOF");
                return k < 0 ? -errno : -EIO;
        }

        t[k] = 0;
        FUNC8(t);

        vtnr = FUNC9(t);
        if (vtnr < 0) {
                FUNC2(vtnr, "Hm, /sys/class/tty/tty0/active is badly formatted: %m");
                return -EIO;
        }

        return FUNC5(s, vtnr);
}