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
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  SYSDATADIR ; 
#define  VLC_LOCALE_DIR 132 
#define  VLC_PKG_DATA_DIR 131 
#define  VLC_PKG_LIBEXEC_DIR 130 
#define  VLC_PKG_LIB_DIR 129 
#define  VLC_SYSDATA_DIR 128 
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,char const*) ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

char *FUNC8(vlc_sysdir_t type, const char *filename)
{
    char *dir = NULL;

    switch (type)
    {
        case VLC_PKG_DATA_DIR:
            dir = FUNC1();
            break;
        case VLC_PKG_LIB_DIR:
            dir = FUNC2();
            break;
        case VLC_PKG_LIBEXEC_DIR:
            dir = FUNC3();
            break;
        case VLC_SYSDATA_DIR:
            dir = FUNC4( SYSDATADIR );
            break;
        case VLC_LOCALE_DIR:
            dir = FUNC4( LOCALEDIR );
            break;
        default:
            FUNC7();
    }

    if (filename == NULL || FUNC6(dir == NULL))
        return dir;

    char *path;
    FUNC0(&path, "%s/%s", dir, filename);
    FUNC5(dir);
    return path;
}