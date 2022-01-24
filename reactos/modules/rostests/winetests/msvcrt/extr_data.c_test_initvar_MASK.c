#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int member_0; unsigned int dwMinorVersion; unsigned int dwMajorVersion; int dwBuildNumber; unsigned int dwPlatformId; } ;
typedef  TYPE_1__ OSVERSIONINFOA ;
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4( HMODULE hmsvcrt )
{
    OSVERSIONINFOA osvi = { sizeof(OSVERSIONINFOA) };
    int *pp_winver   = (int*)FUNC0(hmsvcrt, "_winver");
    int *pp_winmajor = (int*)FUNC0(hmsvcrt, "_winmajor");
    int *pp_winminor = (int*)FUNC0(hmsvcrt, "_winminor");
    int *pp_osver    = (int*)FUNC0(hmsvcrt, "_osver");
    int *pp_osplatform = (int*)FUNC0(hmsvcrt, "_osplatform");
    unsigned int winver, winmajor, winminor, osver, osplatform;

    if( !( pp_winmajor && pp_winminor && pp_winver)) {
        FUNC3("_winver variables are not available\n");
        return;
    }
    winver = *pp_winver;
    winminor = *pp_winminor;
    winmajor = *pp_winmajor;
    FUNC1( &osvi);
    FUNC2( winminor == osvi.dwMinorVersion, "Wrong value for _winminor %02x expected %02x\n",
            winminor, osvi.dwMinorVersion);
    FUNC2( winmajor == osvi.dwMajorVersion, "Wrong value for _winmajor %02x expected %02x\n",
            winmajor, osvi.dwMajorVersion);
    FUNC2( winver == ((osvi.dwMajorVersion << 8) | osvi.dwMinorVersion),
            "Wrong value for _winver %02x expected %02x\n",
            winver, ((osvi.dwMajorVersion << 8) | osvi.dwMinorVersion));
    if( !pp_osver || !pp_osplatform ) {
        FUNC3("_osver variables are not available\n");
        return;
    }
    osver = *pp_osver;
    osplatform = *pp_osplatform;
    FUNC2( osver == (osvi.dwBuildNumber & 0xffff) ||
            ((osvi.dwBuildNumber >> 24) == osvi.dwMajorVersion &&
                 ((osvi.dwBuildNumber >> 16) & 0xff) == osvi.dwMinorVersion), /* 95/98/ME */
            "Wrong value for _osver %04x expected %04x\n",
            osver, osvi.dwBuildNumber);
    FUNC2(osplatform == osvi.dwPlatformId,
            "Wrong value for _osplatform %x expected %x\n",
            osplatform, osvi.dwPlatformId);
}