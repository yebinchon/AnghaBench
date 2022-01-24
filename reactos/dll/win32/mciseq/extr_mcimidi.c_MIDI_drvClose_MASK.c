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
typedef  int /*<<< orphan*/  WINE_MCIMIDI ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static	DWORD	FUNC4(DWORD dwDevID)
{
    WINE_MCIMIDI*  wmm = (WINE_MCIMIDI*)FUNC2(dwDevID);

    if (wmm) {
	FUNC1(FUNC0(), 0, wmm);
	FUNC3(dwDevID, 0);
	return 1;
    }
    return (dwDevID == 0xFFFFFFFF) ? 1 : 0;
}