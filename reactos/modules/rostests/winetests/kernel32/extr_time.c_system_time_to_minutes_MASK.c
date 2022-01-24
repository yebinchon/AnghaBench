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
struct TYPE_3__ {int dwLowDateTime; scalar_t__ dwHighDateTime; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int LONGLONG ;
typedef  TYPE_1__ FILETIME ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LONGLONG FUNC4(const SYSTEMTIME *st)
{
    BOOL ret;
    FILETIME ft;
    LONGLONG minutes;

    FUNC1(0xdeadbeef);
    ret = FUNC2(st, &ft);
    FUNC3(ret, "SystemTimeToFileTime error %u\n", FUNC0());

    minutes = ((LONGLONG)ft.dwHighDateTime << 32) + ft.dwLowDateTime;
    minutes /= (LONGLONG)600000000; /* convert to minutes */
    return minutes;
}