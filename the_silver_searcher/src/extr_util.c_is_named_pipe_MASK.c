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

/* Variables and functions */
 scalar_t__ DT_FIFO ; 
 scalar_t__ DT_LNK ; 
 scalar_t__ DT_SOCK ; 
 scalar_t__ DT_UNKNOWN ; 
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 

int FUNC5(const char *path, const struct dirent *d) {
#ifdef HAVE_DIRENT_DTYPE
    if (d->d_type != DT_UNKNOWN && d->d_type != DT_LNK) {
        return d->d_type == DT_FIFO || d->d_type == DT_SOCK;
    }
#endif
    char *full_path;
    struct stat s;
    FUNC2(&full_path, "%s/%s", path, d->d_name);
    if (FUNC4(full_path, &s) != 0) {
        FUNC3(full_path);
        return FALSE;
    }
    FUNC3(full_path);
    return FUNC0(s.st_mode)
#ifdef S_ISSOCK
           || S_ISSOCK(s.st_mode)
#endif
        ;
}