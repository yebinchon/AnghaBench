
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int Mask; } ;
typedef int * PACL ;
typedef TYPE_1__* PACCESS_ALLOWED_ACE ;
typedef int NTSTATUS ;


 int GetAllowedWorldAce (int *,TYPE_1__**) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int UF_ACCOUNTDISABLE ;
 int UF_DONT_EXPIRE_PASSWD ;
 int UF_HOMEDIR_REQUIRED ;
 int UF_INTERDOMAIN_TRUST_ACCOUNT ;
 int UF_LOCKOUT ;
 int UF_NORMAL_ACCOUNT ;
 int UF_PASSWD_CANT_CHANGE ;
 int UF_PASSWD_NOTREQD ;
 int UF_SCRIPT ;
 int UF_SERVER_TRUST_ACCOUNT ;
 int UF_TEMP_DUPLICATE_ACCOUNT ;
 int UF_WORKSTATION_TRUST_ACCOUNT ;
 int USER_ACCOUNT_AUTO_LOCKED ;
 int USER_ACCOUNT_DISABLED ;
 int USER_CHANGE_PASSWORD ;
 int USER_DONT_EXPIRE_PASSWORD ;
 int USER_HOME_DIRECTORY_REQUIRED ;
 int USER_INTERDOMAIN_TRUST_ACCOUNT ;
 int USER_NORMAL_ACCOUNT ;
 int USER_PASSWORD_NOT_REQUIRED ;
 int USER_SERVER_TRUST_ACCOUNT ;
 int USER_TEMP_DUPLICATE_ACCOUNT ;
 int USER_WORKSTATION_TRUST_ACCOUNT ;

__attribute__((used)) static
ULONG
GetAccountFlags(ULONG AccountControl,
                PACL Dacl)
{
    PACCESS_ALLOWED_ACE Ace = ((void*)0);
    ULONG Flags = UF_SCRIPT;
    NTSTATUS Status;

    if (Dacl != ((void*)0))
    {
        Status = GetAllowedWorldAce(Dacl, &Ace);
        if (NT_SUCCESS(Status))
        {
            if (Ace == ((void*)0))
            {
                Flags |= UF_PASSWD_CANT_CHANGE;
            }
            else if ((Ace->Mask & USER_CHANGE_PASSWORD) == 0)
            {
                Flags |= UF_PASSWD_CANT_CHANGE;
            }
        }
    }

    if (AccountControl & USER_ACCOUNT_DISABLED)
        Flags |= UF_ACCOUNTDISABLE;

    if (AccountControl & USER_HOME_DIRECTORY_REQUIRED)
        Flags |= UF_HOMEDIR_REQUIRED;

    if (AccountControl & USER_PASSWORD_NOT_REQUIRED)
        Flags |= UF_PASSWD_NOTREQD;

    if (AccountControl & USER_ACCOUNT_AUTO_LOCKED)
        Flags |= UF_LOCKOUT;

    if (AccountControl & USER_DONT_EXPIRE_PASSWORD)
        Flags |= UF_DONT_EXPIRE_PASSWD;
    if (AccountControl & USER_TEMP_DUPLICATE_ACCOUNT)
        Flags |= UF_TEMP_DUPLICATE_ACCOUNT;
    else if (AccountControl & USER_NORMAL_ACCOUNT)
        Flags |= UF_NORMAL_ACCOUNT;
    else if (AccountControl & USER_INTERDOMAIN_TRUST_ACCOUNT)
        Flags |= UF_INTERDOMAIN_TRUST_ACCOUNT;
    else if (AccountControl & USER_WORKSTATION_TRUST_ACCOUNT)
        Flags |= UF_WORKSTATION_TRUST_ACCOUNT;
    else if (AccountControl & USER_SERVER_TRUST_ACCOUNT)
        Flags |= UF_SERVER_TRUST_ACCOUNT;

    return Flags;
}
