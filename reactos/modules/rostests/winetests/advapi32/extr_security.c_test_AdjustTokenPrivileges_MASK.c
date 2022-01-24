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
struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {scalar_t__ Attributes; void* Luid; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  void* LUID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_BACKUP_NAME ; 
 scalar_t__ SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  TOKEN_ADJUST_PRIVILEGES ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    TOKEN_PRIVILEGES tp;
    HANDLE token;
    DWORD len;
    LUID luid;
    BOOL ret;

    if (!FUNC4(FUNC2(), TOKEN_ADJUST_PRIVILEGES, &token))
        return;

    if (!FUNC3(NULL, SE_BACKUP_NAME, &luid))
    {
        FUNC1(token);
        return;
    }

    tp.PrivilegeCount = 1;
    tp.Privileges[0].Luid = luid;
    tp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

    len = 0xdeadbeef;
    ret = FUNC0(token, FALSE, &tp, sizeof(TOKEN_PRIVILEGES), NULL, &len);
    FUNC5(ret, "got %d\n", ret);
    FUNC5(len == 0xdeadbeef, "got length %d\n", len);

    /* revert */
    tp.PrivilegeCount = 1;
    tp.Privileges[0].Luid = luid;
    tp.Privileges[0].Attributes = 0;
    ret = FUNC0(token, FALSE, &tp, sizeof(TOKEN_PRIVILEGES), NULL, NULL);
    FUNC5(ret, "got %d\n", ret);

    FUNC1(token);
}