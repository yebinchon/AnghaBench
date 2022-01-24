#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osvi ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {int member_0; int /*<<< orphan*/  dwMinorVersion; int /*<<< orphan*/  dwMajorVersion; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; TYPE_1__ member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_2__ OSVERSIONINFOEXW ;
typedef  int /*<<< orphan*/  DWORDLONG ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VER_GREATER_EQUAL ; 
 int VER_MAJORVERSION ; 
 int VER_MINORVERSION ; 
 int VER_SERVICEPACKMAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  _WIN32_WINNT_WIN8 ; 

__attribute__((used)) static BOOL
FUNC4()
{
    OSVERSIONINFOEXW osvi = { sizeof(osvi), 0, 0, 0, 0, {0}, 0, 0 };
    DWORDLONG const dwlConditionMask = FUNC2(FUNC2(
        FUNC2(0, VER_MAJORVERSION, VER_GREATER_EQUAL),
            VER_MINORVERSION, VER_GREATER_EQUAL),
            VER_SERVICEPACKMAJOR, VER_GREATER_EQUAL);

    osvi.dwMajorVersion = FUNC0(_WIN32_WINNT_WIN8);
    osvi.dwMinorVersion = FUNC1(_WIN32_WINNT_WIN8);

    return FUNC3(&osvi, VER_MAJORVERSION | VER_MINORVERSION | VER_SERVICEPACKMAJOR, dwlConditionMask) != FALSE;
}