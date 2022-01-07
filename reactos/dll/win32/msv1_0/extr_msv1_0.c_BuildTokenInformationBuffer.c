
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_17__ ;
typedef struct TYPE_22__ TYPE_16__ ;
typedef struct TYPE_21__ TYPE_15__ ;


typedef size_t ULONG ;
struct TYPE_28__ {TYPE_7__* DefaultDacl; } ;
struct TYPE_23__ {TYPE_7__* PrimaryGroup; } ;
struct TYPE_27__ {TYPE_7__* Sid; } ;
struct TYPE_22__ {TYPE_4__ User; } ;
struct TYPE_24__ {int HighPart; int LowPart; } ;
struct TYPE_30__ {size_t GroupCount; TYPE_5__ DefaultDacl; TYPE_17__ PrimaryGroup; struct TYPE_30__* Groups; struct TYPE_30__* Sid; TYPE_16__ User; TYPE_1__ ExpirationTime; } ;
struct TYPE_25__ {int HighPart; int LowPart; } ;
struct TYPE_26__ {int UserId; int PrimaryGroupId; TYPE_2__ AccountExpires; } ;
struct TYPE_29__ {TYPE_3__ All; } ;
struct TYPE_21__ {int (* FreeLsaHeap ) (TYPE_7__*) ;TYPE_7__* (* AllocateLsaHeap ) (int) ;} ;
typedef int PSID ;
typedef TYPE_6__* PSAMPR_USER_INFO_BUFFER ;
typedef scalar_t__ PRPC_SID ;
typedef TYPE_7__* PLSA_TOKEN_INFORMATION_V1 ;
typedef int NTSTATUS ;
typedef int LSA_TOKEN_INFORMATION_V1 ;
typedef int BOOL ;


 int BuildTokenGroups (TYPE_7__**,int ,int ,int ) ;
 int BuildTokenPrimaryGroup (TYPE_17__*,int ,int ) ;
 int BuildTokenUser (TYPE_16__*,int ,int ) ;
 TYPE_15__ DispatchTable ;
 int NT_SUCCESS (int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int WARN (char*,...) ;
 TYPE_7__* stub1 (int) ;
 int stub2 (TYPE_7__*) ;
 int stub3 (TYPE_7__*) ;
 int stub4 (TYPE_7__*) ;
 int stub5 (TYPE_7__*) ;
 int stub6 (TYPE_7__*) ;
 int stub7 (TYPE_7__*) ;

__attribute__((used)) static
NTSTATUS
BuildTokenInformationBuffer(PLSA_TOKEN_INFORMATION_V1 *TokenInformation,
                            PRPC_SID AccountDomainSid,
                            PSAMPR_USER_INFO_BUFFER UserInfo,
                            BOOL SpecialAccount)
{
    PLSA_TOKEN_INFORMATION_V1 Buffer = ((void*)0);
    ULONG i;
    NTSTATUS Status = STATUS_SUCCESS;

    Buffer = DispatchTable.AllocateLsaHeap(sizeof(LSA_TOKEN_INFORMATION_V1));
    if (Buffer == ((void*)0))
    {
        WARN("Failed to allocate the local buffer!\n");
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }

    Buffer->ExpirationTime.LowPart = UserInfo->All.AccountExpires.LowPart;
    Buffer->ExpirationTime.HighPart = UserInfo->All.AccountExpires.HighPart;

    Status = BuildTokenUser(&Buffer->User,
                            (PSID)AccountDomainSid,
                            UserInfo->All.UserId);
    if (!NT_SUCCESS(Status))
    {
        WARN("BuildTokenUser() failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    Status = BuildTokenPrimaryGroup(&Buffer->PrimaryGroup,
                                    (PSID)AccountDomainSid,
                                    UserInfo->All.PrimaryGroupId);
    if (!NT_SUCCESS(Status))
    {
        WARN("BuildTokenPrimaryGroup() failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    Status = BuildTokenGroups(&Buffer->Groups,
                              (PSID)AccountDomainSid,
                              UserInfo->All.UserId,
                              SpecialAccount);
    if (!NT_SUCCESS(Status))
    {
        WARN("BuildTokenGroups() failed (Status 0x%08lx)\n", Status);
        goto done;
    }

    *TokenInformation = Buffer;

done:
    if (!NT_SUCCESS(Status))
    {
        if (Buffer != ((void*)0))
        {
            if (Buffer->User.User.Sid != ((void*)0))
                DispatchTable.FreeLsaHeap(Buffer->User.User.Sid);

            if (Buffer->Groups != ((void*)0))
            {
                for (i = 0; i < Buffer->Groups->GroupCount; i++)
                {
                    if (Buffer->Groups->Groups[i].Sid != ((void*)0))
                        DispatchTable.FreeLsaHeap(Buffer->Groups->Groups[i].Sid);
                }

                DispatchTable.FreeLsaHeap(Buffer->Groups);
            }

            if (Buffer->PrimaryGroup.PrimaryGroup != ((void*)0))
                DispatchTable.FreeLsaHeap(Buffer->PrimaryGroup.PrimaryGroup);

            if (Buffer->DefaultDacl.DefaultDacl != ((void*)0))
                DispatchTable.FreeLsaHeap(Buffer->DefaultDacl.DefaultDacl);

            DispatchTable.FreeLsaHeap(Buffer);
        }
    }

    return Status;
}
