#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {int /*<<< orphan*/  member_1; TYPE_3__ member_0; } ;
struct TYPE_7__ {TYPE_2__ member_0; } ;
struct TYPE_11__ {int member_0; TYPE_4__* Privileges; TYPE_1__ member_1; } ;
struct TYPE_10__ {int /*<<< orphan*/  Luid; } ;
typedef  TYPE_5__ TOKEN_PRIVILEGES ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  TOKEN_ADJUST_PRIVILEGES ; 

BOOL
FUNC6(LPWSTR wszName)
{
    HANDLE hToken;
    TOKEN_PRIVILEGES priv = {1, {{{0, 0}, SE_PRIVILEGE_ENABLED}}};
	BOOL bResult;

    FUNC4(0, wszName, &priv.Privileges[0].Luid);

    FUNC5(FUNC2(), TOKEN_ADJUST_PRIVILEGES, &hToken);

    FUNC0(hToken, FALSE, &priv, sizeof priv, 0, 0);
    bResult = FUNC3() == ERROR_SUCCESS;

    FUNC1(hToken);
    return bResult;
}