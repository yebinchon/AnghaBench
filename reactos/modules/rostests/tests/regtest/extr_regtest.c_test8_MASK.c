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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {int /*<<< orphan*/  Attributes; int /*<<< orphan*/  Luid; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LUID ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  TOKEN_ADJUST_PRIVILEGES ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void FUNC9(void)
{
 OBJECT_ATTRIBUTES ObjectAttributes;
 UNICODE_STRING KeyName;
 NTSTATUS Status;
 LONG dwError;
 TOKEN_PRIVILEGES NewPrivileges;
 HANDLE Token,hKey;
 LUID Luid;
 BOOLEAN bRes;
  Status=FUNC5(FUNC1()
	,TOKEN_ADJUST_PRIVILEGES,&Token);
//	,TOKEN_ADJUST_PRIVILEGES|TOKEN_QUERY,&Token);
  FUNC8("\t\t\t\tStatus =%x\n",Status);
//  bRes=LookupPrivilegeValueA(NULL,SE_RESTORE_NAME,&Luid);
//  dprintf("\t\t\t\tbRes =%x\n",bRes);
  NewPrivileges.PrivilegeCount = 1;
  NewPrivileges.Privileges[0].Luid = Luid;
//  NewPrivileges.Privileges[0].Luid.u.LowPart=18;
//  NewPrivileges.Privileges[0].Luid.u.HighPart=0;
  NewPrivileges.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

//  Status = NtAdjustPrivilegesToken(
  bRes = FUNC0(
            Token,
            FALSE,
            &NewPrivileges,
            0,
            NULL,
            NULL
            );
  FUNC8("\t\t\t\tbRes =%x\n",bRes);

//  Status=NtClose(Token);
//  dprintf("\t\t\t\tStatus =%x\n",Status);


  FUNC7(&KeyName,L"test5");
  FUNC2(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status = FUNC3(HKEY_LOCAL_MACHINE,&ObjectAttributes);
  FUNC8("\t\t\t\tStatus =%x\n",Status);
  dwError=FUNC6(HKEY_LOCAL_MACHINE,"def"
		,"test5");
  FUNC8("\t\t\t\tdwError =%x\n",dwError);

  FUNC8("NtOpenKey \\Registry\\Machine : ");
  FUNC7(&KeyName, L"\\Registry\\Machine");
  FUNC2(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  Status=FUNC4( &hKey, MAXIMUM_ALLOWED, &ObjectAttributes);
  FUNC8("\t\t\tStatus =%x\n",Status);
  FUNC7(&KeyName,L"test5");
  FUNC2(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status = FUNC3(hKey,&ObjectAttributes);
  FUNC8("\t\t\t\tStatus =%x\n",Status);
}