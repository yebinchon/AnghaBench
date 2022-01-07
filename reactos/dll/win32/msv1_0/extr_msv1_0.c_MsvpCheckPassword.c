
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int Length; int MaximumLength; int * Buffer; } ;
struct TYPE_9__ {int Buffer; } ;
struct TYPE_8__ {int Buffer; } ;
struct TYPE_10__ {scalar_t__ NtPasswordPresent; scalar_t__ LmPasswordPresent; TYPE_2__ LmOwfPassword; TYPE_1__ NtOwfPassword; } ;
struct TYPE_11__ {TYPE_3__ All; } ;
typedef int PUNICODE_STRING ;
typedef TYPE_4__* PSAMPR_USER_INFO_BUFFER ;
typedef TYPE_5__ OEM_STRING ;
typedef int NTSTATUS ;
typedef int LPSTR ;
typedef int LPBYTE ;
typedef int ENCRYPTED_NT_OWF_PASSWORD ;
typedef int ENCRYPTED_LM_OWF_PASSWORD ;
typedef int CHAR ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 scalar_t__ RtlEqualMemory (int *,int ,int) ;
 int RtlUpcaseUnicodeStringToOemString (TYPE_5__*,int ,scalar_t__) ;
 int STATUS_SUCCESS ;
 int STATUS_WRONG_PASSWORD ;
 int SystemFunction006 (int *,int ) ;
 int SystemFunction007 (int ,int ) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int ZeroMemory (int *,int) ;

__attribute__((used)) static
NTSTATUS
MsvpCheckPassword(PUNICODE_STRING UserPassword,
                  PSAMPR_USER_INFO_BUFFER UserInfo)
{
    ENCRYPTED_NT_OWF_PASSWORD UserNtPassword;
    ENCRYPTED_LM_OWF_PASSWORD UserLmPassword;
    BOOLEAN UserLmPasswordPresent = FALSE;
    BOOLEAN UserNtPasswordPresent = FALSE;
    OEM_STRING LmPwdString;
    CHAR LmPwdBuffer[15];
    NTSTATUS Status;

    TRACE("(%p %p)\n", UserPassword, UserInfo);


    LmPwdString.Length = 15;
    LmPwdString.MaximumLength = 15;
    LmPwdString.Buffer = LmPwdBuffer;
    ZeroMemory(LmPwdString.Buffer, LmPwdString.MaximumLength);

    Status = RtlUpcaseUnicodeStringToOemString(&LmPwdString,
                                               UserPassword,
                                               FALSE);
    if (NT_SUCCESS(Status))
    {

        Status = SystemFunction006(LmPwdString.Buffer,
                                   (LPSTR)&UserLmPassword);
        if (NT_SUCCESS(Status))
        {
            UserLmPasswordPresent = TRUE;
        }
    }


    Status = SystemFunction007(UserPassword,
                               (LPBYTE)&UserNtPassword);
    if (NT_SUCCESS(Status))
    {
        UserNtPasswordPresent = TRUE;
    }

    Status = STATUS_WRONG_PASSWORD;


    if (UserInfo->All.NtPasswordPresent == FALSE &&
        UserInfo->All.LmPasswordPresent == FALSE)
    {
        TRACE("No password check!\n");
        Status = STATUS_SUCCESS;
        goto done;
    }


    if (UserNtPasswordPresent && UserInfo->All.NtPasswordPresent)
    {
        TRACE("Check NT password hashes:\n");
        if (RtlEqualMemory(&UserNtPassword,
                           UserInfo->All.NtOwfPassword.Buffer,
                           sizeof(ENCRYPTED_NT_OWF_PASSWORD)))
        {
            TRACE("  success!\n");
            Status = STATUS_SUCCESS;
            goto done;
        }

        TRACE("  failed!\n");
    }


    if (UserLmPasswordPresent && UserInfo->All.LmPasswordPresent)
    {
        TRACE("Check LM password hashes:\n");
        if (RtlEqualMemory(&UserLmPassword,
                           UserInfo->All.LmOwfPassword.Buffer,
                           sizeof(ENCRYPTED_LM_OWF_PASSWORD)))
        {
            TRACE("  success!\n");
            Status = STATUS_SUCCESS;
            goto done;
        }
        TRACE("  failed!\n");
    }

done:
    return Status;
}
