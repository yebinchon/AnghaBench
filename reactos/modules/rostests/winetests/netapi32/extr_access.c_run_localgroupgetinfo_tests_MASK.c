#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  lgrmi3_domainandname; int /*<<< orphan*/  lgrpi1_comment; int /*<<< orphan*/  lgrpi1_name; } ;
typedef  TYPE_1__* PLOCALGROUP_MEMBERS_INFO_3 ;
typedef  TYPE_1__* PLOCALGROUP_INFO_1 ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_PREFERRED_LENGTH ; 
 scalar_t__ NERR_GroupNotFound ; 
 scalar_t__ NERR_Success ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
    NET_API_STATUS status;
    static const WCHAR admins[] = {'A','d','m','i','n','i','s','t','r','a','t','o','r','s',0};
    PLOCALGROUP_INFO_1 lgi = NULL;
    PLOCALGROUP_MEMBERS_INFO_3 buffer = NULL;
    DWORD entries_read = 0, total_entries =0;
    int i;

    status = FUNC3(NULL, admins, 1, (LPBYTE *)&lgi);
    FUNC1(status == NERR_Success || FUNC0(status == NERR_GroupNotFound),
       "NetLocalGroupGetInfo unexpectedly returned %d\n", status);
    if (status != NERR_Success) return;

    FUNC5("Local groupname:%s\n", FUNC6( lgi->lgrpi1_name));
    FUNC5("Comment: %s\n", FUNC6( lgi->lgrpi1_comment));

    FUNC2(lgi);

    status = FUNC4(NULL, admins, 3, (LPBYTE *)&buffer, MAX_PREFERRED_LENGTH, &entries_read, &total_entries, NULL);
    FUNC1(status == NERR_Success, "NetLocalGroupGetMembers unexpectedly returned %d\n", status);
    FUNC1(entries_read > 0 && total_entries > 0, "Amount of entries is unexpectedly 0\n");

    for(i=0;i<entries_read;i++)
        FUNC5("domain and name: %s\n", FUNC6(buffer[i].lgrmi3_domainandname));

    FUNC2(buffer);
}