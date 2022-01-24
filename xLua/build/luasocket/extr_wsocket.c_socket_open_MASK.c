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
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC5(void) {
    WSADATA wsaData;
    WORD wVersionRequested = FUNC2(2, 0); 
    int err = FUNC4(wVersionRequested, &wsaData );
    if (err != 0) return 0;
    if ((FUNC1(wsaData.wVersion) != 2 || FUNC0(wsaData.wVersion) != 0) &&
        (FUNC1(wsaData.wVersion) != 1 || FUNC0(wsaData.wVersion) != 1)) {
        FUNC3();
        return 0; 
    }
    return 1;
}