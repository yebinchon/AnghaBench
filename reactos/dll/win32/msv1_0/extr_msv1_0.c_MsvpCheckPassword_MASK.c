#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int Length; int MaximumLength; int /*<<< orphan*/ * Buffer; } ;
struct TYPE_9__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_8__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_10__ {scalar_t__ NtPasswordPresent; scalar_t__ LmPasswordPresent; TYPE_2__ LmOwfPassword; TYPE_1__ NtOwfPassword; } ;
struct TYPE_11__ {TYPE_3__ All; } ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  TYPE_4__* PSAMPR_USER_INFO_BUFFER ;
typedef  TYPE_5__ OEM_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  ENCRYPTED_NT_OWF_PASSWORD ;
typedef  int /*<<< orphan*/  ENCRYPTED_LM_OWF_PASSWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_WRONG_PASSWORD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
NTSTATUS
FUNC7(PUNICODE_STRING UserPassword,
                  PSAMPR_USER_INFO_BUFFER UserInfo)
{
    ENCRYPTED_NT_OWF_PASSWORD UserNtPassword;
    ENCRYPTED_LM_OWF_PASSWORD UserLmPassword;
    BOOLEAN UserLmPasswordPresent = FALSE;
    BOOLEAN UserNtPasswordPresent = FALSE;
    OEM_STRING LmPwdString;
    CHAR LmPwdBuffer[15];
    NTSTATUS Status;

    FUNC5("(%p %p)\n", UserPassword, UserInfo);

    /* Calculate the LM password and hash for the users password */
    LmPwdString.Length = 15;
    LmPwdString.MaximumLength = 15;
    LmPwdString.Buffer = LmPwdBuffer;
    FUNC6(LmPwdString.Buffer, LmPwdString.MaximumLength);

    Status = FUNC2(&LmPwdString,
                                               UserPassword,
                                               FALSE);
    if (FUNC0(Status))
    {
        /* Calculate the LM hash value of the users password */
        Status = FUNC3(LmPwdString.Buffer,
                                   (LPSTR)&UserLmPassword);
        if (FUNC0(Status))
        {
            UserLmPasswordPresent = TRUE;
        }
    }

    /* Calculate the NT hash of the users password */
    Status = FUNC4(UserPassword,
                               (LPBYTE)&UserNtPassword);
    if (FUNC0(Status))
    {
        UserNtPasswordPresent = TRUE;
    }

    Status = STATUS_WRONG_PASSWORD;

    /* Succeed, if no password has been set */
    if (UserInfo->All.NtPasswordPresent == FALSE &&
        UserInfo->All.LmPasswordPresent == FALSE)
    {
        FUNC5("No password check!\n");
        Status = STATUS_SUCCESS;
        goto done;
    }

    /* Succeed, if NT password matches */
    if (UserNtPasswordPresent && UserInfo->All.NtPasswordPresent)
    {
        FUNC5("Check NT password hashes:\n");
        if (FUNC1(&UserNtPassword,
                           UserInfo->All.NtOwfPassword.Buffer,
                           sizeof(ENCRYPTED_NT_OWF_PASSWORD)))
        {
            FUNC5("  success!\n");
            Status = STATUS_SUCCESS;
            goto done;
        }

        FUNC5("  failed!\n");
    }

    /* Succeed, if LM password matches */
    if (UserLmPasswordPresent && UserInfo->All.LmPasswordPresent)
    {
        FUNC5("Check LM password hashes:\n");
        if (FUNC1(&UserLmPassword,
                           UserInfo->All.LmOwfPassword.Buffer,
                           sizeof(ENCRYPTED_LM_OWF_PASSWORD)))
        {
            FUNC5("  success!\n");
            Status = STATUS_SUCCESS;
            goto done;
        }
        FUNC5("  failed!\n");
    }

done:
    return Status;
}