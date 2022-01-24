#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_19__ {TYPE_10__* DefaultDacl; } ;
struct TYPE_18__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_13__ {int /*<<< orphan*/  HighPart; int /*<<< orphan*/  LowPart; } ;
struct TYPE_17__ {int /*<<< orphan*/  GroupCount; int /*<<< orphan*/  PrivilegeCount; int /*<<< orphan*/  ImpersonationLevel; TYPE_2__ TokenId; } ;
struct TYPE_14__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_16__ {TYPE_3__ User; } ;
struct TYPE_15__ {int /*<<< orphan*/  Owner; } ;
struct TYPE_12__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_11__ {scalar_t__ AclRevision; } ;
typedef  TYPE_4__ TOKEN_OWNER ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_5__* PTOKEN_USER ;
typedef  scalar_t__* PTOKEN_TYPE ;
typedef  TYPE_6__* PTOKEN_STATISTICS ;
typedef  TYPE_4__* PTOKEN_OWNER ;
typedef  TYPE_8__* PTOKEN_GROUPS ;
typedef  TYPE_9__* PTOKEN_DEFAULT_DACL ;
typedef  int /*<<< orphan*/  PSID ;
typedef  TYPE_10__* PACL ;
typedef  int /*<<< orphan*/ * PACCESS_TOKEN ;
typedef  scalar_t__ NTSTATUS ;
typedef  int BOOLEAN ;

/* Variables and functions */
 scalar_t__ ACL_REVISION ; 
 scalar_t__ ACL_REVISION_DS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_INVALID_INFO_CLASS ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int TRUE ; 
 int /*<<< orphan*/  TokenDefaultDacl ; 
 int /*<<< orphan*/  TokenGroups ; 
 int /*<<< orphan*/  TokenGroupsAndPrivileges ; 
 scalar_t__ TokenImpersonation ; 
 int /*<<< orphan*/  TokenImpersonationLevel ; 
 int /*<<< orphan*/  TokenOrigin ; 
 int /*<<< orphan*/  TokenOwner ; 
 scalar_t__ TokenPrimary ; 
 int /*<<< orphan*/  TokenRestrictedSids ; 
 int /*<<< orphan*/  TokenSandBoxInert ; 
 int /*<<< orphan*/  TokenStatistics ; 
 int /*<<< orphan*/  TokenType ; 
 int /*<<< orphan*/  TokenUser ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

void FUNC4(PACCESS_TOKEN Token) 
{
    NTSTATUS Status;
    PVOID Buffer = NULL;
    PSID sid;
    PTOKEN_OWNER Towner;
    PTOKEN_DEFAULT_DACL TDefDacl;
    PTOKEN_GROUPS TGroups;
    ULONG GroupCount;
    PACL acl;
    PTOKEN_STATISTICS TStats;
    PTOKEN_TYPE TType;
    PTOKEN_USER TUser;
    BOOLEAN Flag;
    ULONG i;

    //----------------------------------------------------------------//
    // Testing SeQueryInformationToken with various args              //
    //----------------------------------------------------------------//

    FUNC3(Token != NULL, "Token is not captured. Testing SQIT interrupted\n\n");

    if (Token == NULL) return;

    Status = FUNC2(Token, TokenOwner, &Buffer);
    FUNC3((Status == STATUS_SUCCESS), "SQIT with TokenOwner arg fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC3(Buffer != NULL, "Wrong. SQIT call was successful with TokenOwner arg. But Buffer == NULL\n");

        if (Buffer)
        {
            Towner = (TOKEN_OWNER *)Buffer;
            sid = Towner->Owner;
            FUNC3((FUNC1(sid) == TRUE), "TokenOwner's SID is not a valid SID\n");
            FUNC0(Buffer);
        }
    }

    //----------------------------------------------------------------//
    
    Buffer = NULL;
    Status = FUNC2(Token, TokenDefaultDacl, &Buffer);
    FUNC3(Status == STATUS_SUCCESS, "SQIT with TokenDefaultDacl fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC3(Buffer != NULL, "Wrong. SQIT call was successful with TokenDefaultDacl arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TDefDacl = (PTOKEN_DEFAULT_DACL)Buffer;
            acl = TDefDacl->DefaultDacl;
            FUNC3(((acl->AclRevision == ACL_REVISION || acl->AclRevision == ACL_REVISION_DS) == TRUE), "DACL is invalid\n");
            FUNC0(Buffer);
        }
    }

    //----------------------------------------------------------------//

    Buffer = NULL;
    Status = FUNC2(Token, TokenGroups, &Buffer);
    FUNC3(Status == STATUS_SUCCESS, "SQIT with TokenGroups fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC3(Buffer != NULL, "Wrong. SQIT call was successful with TokenGroups arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TGroups = (PTOKEN_GROUPS)Buffer;
            GroupCount = TGroups->GroupCount;
            Flag = TRUE;
            for (i = 0; i < GroupCount; i++)
            {
                sid = TGroups->Groups[i].Sid;
                if (!FUNC1(sid))
                {
                    Flag = FALSE;
                    break;
                }
            }
            FUNC3((Flag == TRUE), "TokenGroup's SIDs are not valid\n");
            FUNC0(Buffer);
        }
    }

    //----------------------------------------------------------------//

    // Call SQIT with TokenImpersonationLevel argument
    //
    // What's up? Why SQIT fails with right arg?
    // Because your token has Token->TokenType != TokenImpersonation. -hbelusca

    Buffer = NULL;
    Status = FUNC2(Token, TokenImpersonationLevel, &Buffer);
    FUNC3(Status == STATUS_SUCCESS, "SQIT with TokenImpersonationLevel fails with status 0x%08X\n", Status);
    if (Buffer) FUNC0(Buffer);

    Buffer = NULL;
    Status = FUNC2(Token, TokenImpersonationLevel, &Buffer);
    FUNC3(Status == STATUS_SUCCESS, "and again: SQIT with TokenImpersonationLevel fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC3(Buffer != NULL, "Wrong. SQIT call was successful with TokenImpersonationLevel arg. But Buffer == NULL\n");
    } else {
        FUNC3(Buffer == NULL, "Wrong. SQIT call failed. But Buffer != NULL\n");
    }
    if (Buffer) FUNC0(Buffer);

    //----------------------------------------------------------------//

    // Call SQIT with the 4 classes (TokenOrigin, TokenGroupsAndPrivileges,
    // TokenRestrictedSids and TokenSandBoxInert) are not supported by
    // SeQueryInformationToken (only NtQueryInformationToken supports them).
    //

    Buffer = NULL;
    Status = FUNC2(Token, TokenOrigin, &Buffer);
    FUNC3(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenOrigin failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    FUNC3(Buffer == NULL, "Wrong. SQIT call failed. But Buffer != NULL\n");

    Buffer = NULL;
    Status = FUNC2(Token, TokenGroupsAndPrivileges, &Buffer);
    FUNC3(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenGroupsAndPrivileges failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    FUNC3(Buffer == NULL, "Wrong. SQIT call failed. But Buffer != NULL\n");

    Buffer = NULL;
    Status = FUNC2(Token, TokenRestrictedSids, &Buffer);
    FUNC3(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenRestrictedSids failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    FUNC3(Buffer == NULL, "Wrong. SQIT call failed. But Buffer != NULL\n");

    Buffer = NULL;
    Status = FUNC2(Token, TokenSandBoxInert, &Buffer);
    FUNC3(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenSandBoxInert failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    FUNC3(Buffer == NULL, "Wrong. SQIT call failed. But Buffer != NULL\n");

    //----------------------------------------------------------------//

    Buffer = NULL;
    Status = FUNC2(Token, TokenStatistics, &Buffer);
    FUNC3(Status == STATUS_SUCCESS, "SQIT with TokenStatistics fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC3(Buffer != NULL, "Wrong. SQIT call was successful with TokenStatistics arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TStats = (PTOKEN_STATISTICS)Buffer;
            // just put 0 into 1st arg or use trace to print TokenStatistics
            FUNC3(1, "print statistics:\n\tTokenID = %u_%d\n\tSecurityImperLevel = %d\n\tPrivCount = %d\n\tGroupCount = %d\n\n", TStats->TokenId.LowPart, 
                TStats->TokenId.HighPart, 
                TStats->ImpersonationLevel,
                TStats->PrivilegeCount,
                TStats->GroupCount
                );
            FUNC0(Buffer);
        }
    } else {
        FUNC3(Buffer == NULL, "Wrong. SQIT call failed. But Buffer != NULL\n");
    }

    //----------------------------------------------------------------//

    Buffer = NULL;
    Status = FUNC2(Token, TokenType, &Buffer);
    FUNC3(Status == STATUS_SUCCESS, "SQIT with TokenType fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC3(Buffer != NULL, "Wrong. SQIT call was successful with TokenType arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TType = (PTOKEN_TYPE)Buffer;
            FUNC3((*TType == TokenPrimary || *TType == TokenImpersonation), "TokenType in not a primary nor impersonation. FAILED\n");
            FUNC0(Buffer);
        }
    }

    //----------------------------------------------------------------//

    Buffer = NULL;
    Status = FUNC2(Token, TokenUser, &Buffer);
    FUNC3(Status == STATUS_SUCCESS, "SQIT with TokenUser fails\n");
    if (Status == STATUS_SUCCESS)
    {
        FUNC3(Buffer != NULL, "Wrong. SQIT call was successful with TokenUser arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TUser = (PTOKEN_USER)Buffer;
            FUNC3(FUNC1(TUser->User.Sid), "TokenUser has an invalid Sid\n");
            FUNC0(Buffer);
        }
    }

    //----------------------------------------------------------------//

    Buffer = NULL;
    Status = FUNC2(Token, TokenSandBoxInert, &Buffer);
    FUNC3(Status != STATUS_SUCCESS, "SQIT must fail with wrong TOKEN_INFORMATION_CLASS arg\n");
}