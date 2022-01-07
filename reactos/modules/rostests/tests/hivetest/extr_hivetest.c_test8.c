
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UNICODE_STRING ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_6__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_5__ {int Attributes; TYPE_3__ Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef TYPE_3__ LUID ;
typedef int LONG ;
typedef int HANDLE ;
typedef int BOOLEAN ;


 int AdjustTokenPrivileges (int ,int ,TYPE_2__*,int ,int *,int *) ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int MAXIMUM_ALLOWED ;
 int NtLoadKey (int ,int *) ;
 int NtOpenKey (int *,int ,int *) ;
 int NtOpenProcessToken (int ,int ,int *) ;
 int OBJ_CASE_INSENSITIVE ;
 int RegLoadKey (scalar_t__,char*,char*) ;
 int RtlRosInitUnicodeStringFromLiteral (int *,char*) ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int dprintf (char*,...) ;

void test8(void)
{
 OBJECT_ATTRIBUTES ObjectAttributes;
 UNICODE_STRING KeyName;
 NTSTATUS Status;
 LONG dwError;
 TOKEN_PRIVILEGES NewPrivileges;
 HANDLE Token,hKey;
 LUID Luid = {0};
 BOOLEAN bRes;
  Status=NtOpenProcessToken(GetCurrentProcess()
 ,TOKEN_ADJUST_PRIVILEGES,&Token);

  dprintf("\t\t\t\tStatus =%x\n",Status);


  NewPrivileges.PrivilegeCount = 1;
  NewPrivileges.Privileges[0].Luid = Luid;


  NewPrivileges.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;


  bRes = AdjustTokenPrivileges(
            Token,
            FALSE,
            &NewPrivileges,
            0,
            ((void*)0),
            ((void*)0)
            );
  dprintf("\t\t\t\tbRes =%x\n",bRes);





  RtlRosInitUnicodeStringFromLiteral(&KeyName,L"test5");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status = NtLoadKey((HANDLE)HKEY_LOCAL_MACHINE,&ObjectAttributes);
  dprintf("\t\t\t\tStatus =%x\n",Status);
  dwError=RegLoadKey(HKEY_LOCAL_MACHINE,"def"
  ,"test5");
  dprintf("\t\t\t\tdwError =%x\n",dwError);

  dprintf("NtOpenKey \\Registry\\Machine : ");
  RtlRosInitUnicodeStringFromLiteral(&KeyName, L"\\Registry\\Machine");
  InitializeObjectAttributes(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));
  Status=NtOpenKey( &hKey, MAXIMUM_ALLOWED, &ObjectAttributes);
  dprintf("\t\t\tStatus =%x\n",Status);
  RtlRosInitUnicodeStringFromLiteral(&KeyName,L"test5");
  InitializeObjectAttributes(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
    , ((void*)0), ((void*)0));
  Status = NtLoadKey(hKey,&ObjectAttributes);
  dprintf("\t\t\t\tStatus =%x\n",Status);
}
