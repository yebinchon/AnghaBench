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
typedef  int /*<<< orphan*/  USER_MODALS_INFO_2 ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
    NET_API_STATUS rc;
    USER_MODALS_INFO_2 * umi2 = NULL;

    rc = FUNC2(NULL, 2, (LPBYTE *)&umi2);
    FUNC0(rc == ERROR_SUCCESS, "NetUserModalsGet failed, rc = %d\n", rc);

    if (umi2)
        FUNC1(umi2);
}