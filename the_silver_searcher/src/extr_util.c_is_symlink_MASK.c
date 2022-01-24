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
struct dirent {char* d_name; scalar_t__ d_type; } ;

/* Variables and functions */
 scalar_t__ DT_LNK ; 
 scalar_t__ DT_UNKNOWN ; 
 int FALSE ; 
 int FILE_ATTRIBUTE_REPARSE_POINT ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char*) ; 

int FUNC6(const char *path, const struct dirent *d) {
#ifdef _WIN32
    char full_path[MAX_PATH + 1] = { 0 };
    sprintf(full_path, "%s\\%s", path, d->d_name);
    return (GetFileAttributesA(full_path) & FILE_ATTRIBUTE_REPARSE_POINT);
#else
#ifdef HAVE_DIRENT_DTYPE
    /* Some filesystems, e.g. ReiserFS, always return a type DT_UNKNOWN from readdir or scandir. */
    /* Call lstat if we find DT_UNKNOWN to get the information we need. */
    if (d->d_type != DT_UNKNOWN) {
        return (d->d_type == DT_LNK);
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
    return FUNC1(s.st_mode);
#endif
}