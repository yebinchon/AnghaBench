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
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  dwBuildNumber; int /*<<< orphan*/  dwMinorVersion; int /*<<< orphan*/  dwMajorVersion; } ;
typedef  TYPE_1__ OSVERSIONINFOEXW ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC2( OSVERSIONINFOEXW *ver )
{
    static const WCHAR fmtW[] = {'%','u','.','%','u','.','%','u',0};
    WCHAR *ret = FUNC0( 33 * sizeof(WCHAR) );
    if (ret) FUNC1( ret, fmtW, ver->dwMajorVersion, ver->dwMinorVersion, ver->dwBuildNumber );
    return ret;
}