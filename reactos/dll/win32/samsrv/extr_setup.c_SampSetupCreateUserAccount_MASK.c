#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char* ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int Attributes; void* RelativeId; } ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
struct TYPE_11__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_10__ {scalar_t__ QuadPart; } ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {int Version; char* UserId; char* UserAccountControl; scalar_t__ OperatorCount; scalar_t__ AdminCount; scalar_t__ LogonCount; scalar_t__ BadPasswordCount; scalar_t__ CodePage; scalar_t__ CountryCode; void* PrimaryGroupId; TYPE_5__ LastBadPasswordTime; TYPE_4__ AccountExpires; TYPE_3__ PasswordLastSet; TYPE_2__ LastLogoff; TYPE_1__ LastLogon; scalar_t__ Reserved; } ;
typedef  TYPE_6__ SAM_USER_FIXED_DATA ;
typedef  int* PUSHORT ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LogonHours ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_7__ GROUP_MEMBERSHIP ;
typedef  int /*<<< orphan*/  ENCRYPTED_NT_OWF_PASSWORD ;
typedef  int /*<<< orphan*/  ENCRYPTED_LM_OWF_PASSWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* DOMAIN_GROUP_RID_USERS ; 
 int /*<<< orphan*/  EmptyLmHash ; 
 int /*<<< orphan*/  EmptyNtHash ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  MAXLONGLONG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int SE_GROUP_ENABLED ; 
 int SE_GROUP_ENABLED_BY_DEFAULT ; 
 int SE_GROUP_MANDATORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static
NTSTATUS
FUNC13(HANDLE hDomainKey,
                           LPCWSTR lpAccountName,
                           LPCWSTR lpComment,
                           PSID lpDomainSid,
                           ULONG ulRelativeId,
                           ULONG UserAccountControl)
{
    SAM_USER_FIXED_DATA FixedUserData;
    GROUP_MEMBERSHIP GroupMembership;
    UCHAR LogonHours[23];
    LPWSTR lpEmptyString = L"";
    WCHAR szAccountKeyName[32];
    HANDLE hAccountKey = NULL;
    HANDLE hNamesKey = NULL;
    PSECURITY_DESCRIPTOR Sd = NULL;
    ULONG SdSize = 0;
    PSID UserSid = NULL;
    NTSTATUS Status;

    UserSid = FUNC0(lpDomainSid,
                             ulRelativeId);

    /* Create the security descriptor */
    Status = FUNC4(UserSid,
                              &Sd,
                              &SdSize);
    if (!FUNC1(Status))
        goto done;

    /* Initialize fixed user data */
    FixedUserData.Version = 1;
    FixedUserData.Reserved = 0;
    FixedUserData.LastLogon.QuadPart = 0;
    FixedUserData.LastLogoff.QuadPart = 0;
    FixedUserData.PasswordLastSet.QuadPart = 0;
    FixedUserData.AccountExpires.QuadPart = MAXLONGLONG;
    FixedUserData.LastBadPasswordTime.QuadPart = 0;
    FixedUserData.UserId = ulRelativeId;
    FixedUserData.PrimaryGroupId = DOMAIN_GROUP_RID_USERS;
    FixedUserData.UserAccountControl = UserAccountControl;
    FixedUserData.CountryCode = 0;
    FixedUserData.CodePage = 0;
    FixedUserData.BadPasswordCount = 0;
    FixedUserData.LogonCount = 0;
    FixedUserData.AdminCount = 0;
    FixedUserData.OperatorCount = 0;

    FUNC11(szAccountKeyName, L"Users\\%08lX", ulRelativeId);

    Status = FUNC6(hDomainKey,
                              szAccountKeyName,
                              KEY_ALL_ACCESS,
                              &hAccountKey);
    if (!FUNC1(Status))
        return Status;

    Status = FUNC9(hAccountKey,
                             L"F",
                             REG_BINARY,
                             (LPVOID)&FixedUserData,
                             sizeof(SAM_USER_FIXED_DATA));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"Name",
                             REG_SZ,
                             (LPVOID)lpAccountName,
                             (FUNC12(lpAccountName) + 1) * sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"FullName",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"HomeDirectory",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"HomeDirectoryDrive",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"ScriptPath",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"ProfilePath",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"AdminComment",
                             REG_SZ,
                             (LPVOID)lpComment,
                             (FUNC12(lpComment) + 1) * sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"UserComment",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"WorkStations",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hAccountKey,
                             L"Parameters",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    /* Set LogonHours attribute*/
    *((PUSHORT)LogonHours) = 168;
    FUNC10(&(LogonHours[2]), 0xff, 21);

    Status = FUNC9(hAccountKey,
                             L"LogonHours",
                             REG_BINARY,
                             (LPVOID)LogonHours,
                             sizeof(LogonHours));
    if (!FUNC1(Status))
        goto done;

    /* Set Groups attribute*/
    GroupMembership.RelativeId = DOMAIN_GROUP_RID_USERS;
    GroupMembership.Attributes = SE_GROUP_MANDATORY |
                                 SE_GROUP_ENABLED |
                                 SE_GROUP_ENABLED_BY_DEFAULT;

    Status = FUNC9(hAccountKey,
                             L"Groups",
                             REG_BINARY,
                             (LPVOID)&GroupMembership,
                             sizeof(GROUP_MEMBERSHIP));
    if (!FUNC1(Status))
        goto done;

    /* Set LMPwd attribute*/
    Status = FUNC9(hAccountKey,
                             L"LMPwd",
                             REG_BINARY,
                             (LPVOID)&EmptyLmHash,
                             sizeof(ENCRYPTED_LM_OWF_PASSWORD));
    if (!FUNC1(Status))
        goto done;

    /* Set NTPwd attribute*/
    Status = FUNC9(hAccountKey,
                             L"NTPwd",
                             REG_BINARY,
                             (LPVOID)&EmptyNtHash,
                             sizeof(ENCRYPTED_NT_OWF_PASSWORD));
    if (!FUNC1(Status))
        goto done;

    /* Set LMPwdHistory attribute*/
    Status = FUNC9(hAccountKey,
                             L"LMPwdHistory",
                             REG_BINARY,
                             NULL,
                             0);
    if (!FUNC1(Status))
        goto done;

    /* Set NTPwdHistory attribute*/
    Status = FUNC9(hAccountKey,
                             L"NTPwdHistory",
                             REG_BINARY,
                             NULL,
                             0);
    if (!FUNC1(Status))
        goto done;

    /* Set PrivateData attribute*/
    Status = FUNC9(hAccountKey,
                             L"PrivateData",
                             REG_SZ,
                             (LPVOID)lpEmptyString,
                             sizeof(WCHAR));
    if (!FUNC1(Status))
        goto done;

    /* Set the SecDesc attribute*/
    Status = FUNC9(hAccountKey,
                             L"SecDesc",
                             REG_BINARY,
                             Sd,
                             SdSize);
    if (!FUNC1(Status))
        goto done;

    Status = FUNC8(hDomainKey,
                            L"Users\\Names",
                            KEY_ALL_ACCESS,
                            &hNamesKey);
    if (!FUNC1(Status))
        goto done;

    Status = FUNC9(hNamesKey,
                            lpAccountName,
                            REG_DWORD,
                            (LPVOID)&ulRelativeId,
                            sizeof(ULONG));

done:
    FUNC5(&hNamesKey);

    if (Sd != NULL)
        FUNC2(FUNC3(), 0, Sd);

    if (UserSid != NULL)
        FUNC2(FUNC3(), 0, UserSid);

    if (hAccountKey != NULL)
    {
        FUNC5(&hAccountKey);

        if (!FUNC1(Status))
            FUNC7(hDomainKey,
                             szAccountKeyName);
    }

    return Status;
}