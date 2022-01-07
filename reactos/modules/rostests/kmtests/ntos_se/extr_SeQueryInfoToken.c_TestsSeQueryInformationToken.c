
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef size_t ULONG ;
struct TYPE_19__ {TYPE_10__* DefaultDacl; } ;
struct TYPE_18__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_13__ {int HighPart; int LowPart; } ;
struct TYPE_17__ {int GroupCount; int PrivilegeCount; int ImpersonationLevel; TYPE_2__ TokenId; } ;
struct TYPE_14__ {int Sid; } ;
struct TYPE_16__ {TYPE_3__ User; } ;
struct TYPE_15__ {int Owner; } ;
struct TYPE_12__ {int Sid; } ;
struct TYPE_11__ {scalar_t__ AclRevision; } ;
typedef TYPE_4__ TOKEN_OWNER ;
typedef int * PVOID ;
typedef TYPE_5__* PTOKEN_USER ;
typedef scalar_t__* PTOKEN_TYPE ;
typedef TYPE_6__* PTOKEN_STATISTICS ;
typedef TYPE_4__* PTOKEN_OWNER ;
typedef TYPE_8__* PTOKEN_GROUPS ;
typedef TYPE_9__* PTOKEN_DEFAULT_DACL ;
typedef int PSID ;
typedef TYPE_10__* PACL ;
typedef int * PACCESS_TOKEN ;
typedef scalar_t__ NTSTATUS ;
typedef int BOOLEAN ;


 scalar_t__ ACL_REVISION ;
 scalar_t__ ACL_REVISION_DS ;
 int ExFreePool (int *) ;
 int FALSE ;
 int RtlValidSid (int ) ;
 scalar_t__ STATUS_INVALID_INFO_CLASS ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ SeQueryInformationToken (int *,int ,int **) ;
 int TRUE ;
 int TokenDefaultDacl ;
 int TokenGroups ;
 int TokenGroupsAndPrivileges ;
 scalar_t__ TokenImpersonation ;
 int TokenImpersonationLevel ;
 int TokenOrigin ;
 int TokenOwner ;
 scalar_t__ TokenPrimary ;
 int TokenRestrictedSids ;
 int TokenSandBoxInert ;
 int TokenStatistics ;
 int TokenType ;
 int TokenUser ;
 int ok (int,char*,...) ;

void TestsSeQueryInformationToken(PACCESS_TOKEN Token)
{
    NTSTATUS Status;
    PVOID Buffer = ((void*)0);
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





    ok(Token != ((void*)0), "Token is not captured. Testing SQIT interrupted\n\n");

    if (Token == ((void*)0)) return;

    Status = SeQueryInformationToken(Token, TokenOwner, &Buffer);
    ok((Status == STATUS_SUCCESS), "SQIT with TokenOwner arg fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        ok(Buffer != ((void*)0), "Wrong. SQIT call was successful with TokenOwner arg. But Buffer == NULL\n");

        if (Buffer)
        {
            Towner = (TOKEN_OWNER *)Buffer;
            sid = Towner->Owner;
            ok((RtlValidSid(sid) == TRUE), "TokenOwner's SID is not a valid SID\n");
            ExFreePool(Buffer);
        }
    }



    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenDefaultDacl, &Buffer);
    ok(Status == STATUS_SUCCESS, "SQIT with TokenDefaultDacl fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        ok(Buffer != ((void*)0), "Wrong. SQIT call was successful with TokenDefaultDacl arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TDefDacl = (PTOKEN_DEFAULT_DACL)Buffer;
            acl = TDefDacl->DefaultDacl;
            ok(((acl->AclRevision == ACL_REVISION || acl->AclRevision == ACL_REVISION_DS) == TRUE), "DACL is invalid\n");
            ExFreePool(Buffer);
        }
    }



    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenGroups, &Buffer);
    ok(Status == STATUS_SUCCESS, "SQIT with TokenGroups fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        ok(Buffer != ((void*)0), "Wrong. SQIT call was successful with TokenGroups arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TGroups = (PTOKEN_GROUPS)Buffer;
            GroupCount = TGroups->GroupCount;
            Flag = TRUE;
            for (i = 0; i < GroupCount; i++)
            {
                sid = TGroups->Groups[i].Sid;
                if (!RtlValidSid(sid))
                {
                    Flag = FALSE;
                    break;
                }
            }
            ok((Flag == TRUE), "TokenGroup's SIDs are not valid\n");
            ExFreePool(Buffer);
        }
    }
    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenImpersonationLevel, &Buffer);
    ok(Status == STATUS_SUCCESS, "SQIT with TokenImpersonationLevel fails with status 0x%08X\n", Status);
    if (Buffer) ExFreePool(Buffer);

    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenImpersonationLevel, &Buffer);
    ok(Status == STATUS_SUCCESS, "and again: SQIT with TokenImpersonationLevel fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        ok(Buffer != ((void*)0), "Wrong. SQIT call was successful with TokenImpersonationLevel arg. But Buffer == NULL\n");
    } else {
        ok(Buffer == ((void*)0), "Wrong. SQIT call failed. But Buffer != NULL\n");
    }
    if (Buffer) ExFreePool(Buffer);
    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenOrigin, &Buffer);
    ok(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenOrigin failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    ok(Buffer == ((void*)0), "Wrong. SQIT call failed. But Buffer != NULL\n");

    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenGroupsAndPrivileges, &Buffer);
    ok(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenGroupsAndPrivileges failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    ok(Buffer == ((void*)0), "Wrong. SQIT call failed. But Buffer != NULL\n");

    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenRestrictedSids, &Buffer);
    ok(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenRestrictedSids failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    ok(Buffer == ((void*)0), "Wrong. SQIT call failed. But Buffer != NULL\n");

    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenSandBoxInert, &Buffer);
    ok(Status == STATUS_INVALID_INFO_CLASS, "SQIT with TokenSandBoxInert failed with Status 0x%08X; expected STATUS_INVALID_INFO_CLASS\n", Status);
    ok(Buffer == ((void*)0), "Wrong. SQIT call failed. But Buffer != NULL\n");



    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenStatistics, &Buffer);
    ok(Status == STATUS_SUCCESS, "SQIT with TokenStatistics fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        ok(Buffer != ((void*)0), "Wrong. SQIT call was successful with TokenStatistics arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TStats = (PTOKEN_STATISTICS)Buffer;

            ok(1, "print statistics:\n\tTokenID = %u_%d\n\tSecurityImperLevel = %d\n\tPrivCount = %d\n\tGroupCount = %d\n\n", TStats->TokenId.LowPart,
                TStats->TokenId.HighPart,
                TStats->ImpersonationLevel,
                TStats->PrivilegeCount,
                TStats->GroupCount
                );
            ExFreePool(Buffer);
        }
    } else {
        ok(Buffer == ((void*)0), "Wrong. SQIT call failed. But Buffer != NULL\n");
    }



    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenType, &Buffer);
    ok(Status == STATUS_SUCCESS, "SQIT with TokenType fails with status 0x%08X\n", Status);
    if (Status == STATUS_SUCCESS)
    {
        ok(Buffer != ((void*)0), "Wrong. SQIT call was successful with TokenType arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TType = (PTOKEN_TYPE)Buffer;
            ok((*TType == TokenPrimary || *TType == TokenImpersonation), "TokenType in not a primary nor impersonation. FAILED\n");
            ExFreePool(Buffer);
        }
    }



    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenUser, &Buffer);
    ok(Status == STATUS_SUCCESS, "SQIT with TokenUser fails\n");
    if (Status == STATUS_SUCCESS)
    {
        ok(Buffer != ((void*)0), "Wrong. SQIT call was successful with TokenUser arg. But Buffer == NULL\n");
        if (Buffer)
        {
            TUser = (PTOKEN_USER)Buffer;
            ok(RtlValidSid(TUser->User.Sid), "TokenUser has an invalid Sid\n");
            ExFreePool(Buffer);
        }
    }



    Buffer = ((void*)0);
    Status = SeQueryInformationToken(Token, TokenSandBoxInert, &Buffer);
    ok(Status != STATUS_SUCCESS, "SQIT must fail with wrong TOKEN_INFORMATION_CLASS arg\n");
}
