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
typedef  int /*<<< orphan*/  DEVMODEW ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    BOOL br;

    if (!&pIsValidDevmodeW)
    {
        FUNC2("IsValidDevmodeW not implemented.\n");
        return;
    }

    br = FUNC1(NULL, 0);
    FUNC0(br == FALSE, "Got %d\n", br);

    br = FUNC1(NULL, 1);
    FUNC0(br == FALSE, "Got %d\n", br);

    br = FUNC1(NULL, sizeof(DEVMODEW));
    FUNC0(br == FALSE, "Got %d\n", br);
}