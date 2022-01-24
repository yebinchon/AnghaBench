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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int S_IRWXO ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

int FUNC3(const char *filename, struct stat *st, const char *unit, unsigned line) {
        struct stat _st;

        if (!filename)
                return 0;

        if (!st) {
                if (FUNC2(filename, &_st) < 0)
                        return -errno;
                st = &_st;
        }

        if ((st->st_mode & S_IRWXO) == 0)
                return 0;

        if (unit)
                FUNC0(unit, LOG_WARNING, filename, line, 0,
                           "%s has %04o mode that is too permissive, please adjust the ownership and access mode.",
                           filename, st->st_mode & 07777);
        else
                FUNC1("%s has %04o mode that is too permissive, please adjust the ownership and access mode.",
                            filename, st->st_mode & 07777);
        return 0;
}