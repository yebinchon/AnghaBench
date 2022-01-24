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
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  HDESK ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  DESKTOP_ALL_ACCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static HDESK FUNC3(PCWSTR deskName, DWORD *error)
{
    HDESK hdesk;
    FUNC2(0xfeedf00d);
    hdesk = FUNC1(deskName, 0, FALSE, DESKTOP_ALL_ACCESS);
    *error = FUNC0();
    return hdesk;
}