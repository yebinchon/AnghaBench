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
typedef  int vlc_sysdir_t ;

/* Variables and functions */
#define  VLC_LIB_DIR 129 
#define  VLC_SYSDATA_DIR 128 
 int FUNC0 (char**,char*,char*,char const*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

char *FUNC5(vlc_sysdir_t type, const char *filename)
{
    char *dir = NULL;

    switch (type)
    {
        case VLC_SYSDATA_DIR:
            dir = FUNC3("/system/usr/share");
            break;
        case VLC_LIB_DIR:
            dir = FUNC1();
            break;
        default:
            break;
    }

    if (filename == NULL || dir == NULL)
        return dir;

    char *path;
    if (FUNC4(FUNC0(&path, "%s/%s", dir, filename) == -1))
        path = NULL;
    FUNC2(dir);
    return path;
}