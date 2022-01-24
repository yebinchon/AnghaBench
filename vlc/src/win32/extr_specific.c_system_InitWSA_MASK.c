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
struct TYPE_3__ {int /*<<< orphan*/  wVersion; } ;
typedef  TYPE_1__ WSADATA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(int hi, int lo)
{
    WSADATA data;

    if (FUNC4(FUNC2(hi, lo), &data) == 0)
    {
        if (FUNC1(data.wVersion) == 2 && FUNC0(data.wVersion) == 2)
            return 0;
        /* Winsock DLL is not usable */
        FUNC3( );
    }
    return -1;
}