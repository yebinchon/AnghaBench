#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InputHandle ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void FUNC8(void)
{
 HANDLE hKey;
 OBJECT_ATTRIBUTES ObjectAttributes;
 UNICODE_STRING KeyName;
 NTSTATUS Status;
 char Buffer[10];
 DWORD Result;
  FUNC7("NtCreateKey non volatile: \n");
  FUNC7("  \\Registry\\Machine\\Software\\test3reactos: ");
  FUNC6(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status = FUNC2 ( &hKey, KEY_ALL_ACCESS , &ObjectAttributes
		,0,NULL,REG_OPTION_NON_VOLATILE,NULL);
  FUNC7("\t\tStatus=%x\n",Status);
  FUNC1(hKey);

  FUNC7("delete \\Registry\\Machine\\software\\test3reactos ?");
  FUNC5(InputHandle, Buffer, 3, &Result, NULL) ;
  if (Buffer[0] != 'y' && Buffer[0] != 'Y') return;

  FUNC7("delete \\Registry\\Machine\\software\\test3reactos ?");
  FUNC6(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  FUNC7("NtOpenKey : ");
  Status=FUNC4( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  FUNC7("\t\t\t\tStatus =%x\n",Status);
  FUNC7("NtDeleteKey : ");
  Status=FUNC3(hKey);
  FUNC7("\t\t\t\tStatus =%x\n",Status);
  FUNC1(hKey);
}