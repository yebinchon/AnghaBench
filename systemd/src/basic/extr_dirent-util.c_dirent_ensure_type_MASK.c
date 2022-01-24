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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {scalar_t__ d_type; int /*<<< orphan*/  d_name; } ;
typedef  struct dirent DIR ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SYMLINK_NOFOLLOW ; 
 scalar_t__ DT_BLK ; 
 scalar_t__ DT_CHR ; 
 scalar_t__ DT_DIR ; 
 scalar_t__ DT_FIFO ; 
 scalar_t__ DT_LNK ; 
 scalar_t__ DT_REG ; 
 scalar_t__ DT_SOCK ; 
 scalar_t__ DT_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC8 (struct dirent*) ; 
 int errno ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ ) ; 

int FUNC10(DIR *d, struct dirent *de) {
        struct stat st;

        FUNC7(d);
        FUNC7(de);

        if (de->d_type != DT_UNKNOWN)
                return 0;

        if (FUNC9(FUNC8(d), de->d_name, &st, AT_SYMLINK_NOFOLLOW) < 0)
                return -errno;

        de->d_type =
                FUNC5(st.st_mode)  ? DT_REG  :
                FUNC2(st.st_mode)  ? DT_DIR  :
                FUNC4(st.st_mode)  ? DT_LNK  :
                FUNC3(st.st_mode) ? DT_FIFO :
                FUNC6(st.st_mode) ? DT_SOCK :
                FUNC1(st.st_mode)  ? DT_CHR  :
                FUNC0(st.st_mode)  ? DT_BLK  :
                                       DT_UNKNOWN;

        return 0;
}