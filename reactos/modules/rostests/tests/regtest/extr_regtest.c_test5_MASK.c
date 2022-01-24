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
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void FUNC6(void)
{
  HKEY hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName;
  NTSTATUS Status;

  FUNC5("NtOpenKey : \n");
  FUNC5("  \\Registry\\Machine\\Software\\reactos : ");
  FUNC4(&KeyName,L"\\Registry\\Machine\\Software\\reactos");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status=FUNC3( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  FUNC5("\t\tStatus=%x\n",Status);
  FUNC5("NtFlushKey : \n");
  Status = FUNC2(hKey);
  FUNC5("\t\tStatus=%x\n",Status);
  FUNC5("NtCloseKey : \n");
  Status=FUNC1(hKey);
  FUNC5("\t\tStatus=%x\n",Status);
}