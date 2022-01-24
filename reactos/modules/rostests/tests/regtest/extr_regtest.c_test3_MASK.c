#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_3__ {int DataOffset; int NameLength; char** Name; char* Type; int /*<<< orphan*/  DataLength; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  char* NTSTATUS ;
typedef  int /*<<< orphan*/  KeyValueInformation ;
typedef  TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InputHandle ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  KeyValueFullInformation ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 char* FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 scalar_t__ REG_DWORD ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

void FUNC11(void)
{
 HKEY hKey,hKey1;
 OBJECT_ATTRIBUTES ObjectAttributes;
 UNICODE_STRING KeyName,ValueName;
 NTSTATUS Status;
 KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];
 ULONG Index,Length,i;
 char Buffer[10];
 DWORD Result;
  FUNC10("NtCreateKey non volatile: \n");
  FUNC10("  \\Registry\\Machine\\Software\\test3reactos: ");
  FUNC8(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status = FUNC2 ( &hKey, KEY_ALL_ACCESS , &ObjectAttributes
		,0,NULL,REG_OPTION_NON_VOLATILE,NULL);
  FUNC10("\t\tStatus=%x\n",Status);
  FUNC1(hKey);
  FUNC9(L"\\Registry\\Machine\\Software");
  FUNC10("NtOpenKey: ");
  Status=FUNC5( &hKey, MAXIMUM_ALLOWED, &ObjectAttributes);
  FUNC10("\t\tStatus=%x\n",Status);
  FUNC1(hKey);
  FUNC10("  ...\\test3 :");
  FUNC8(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos\\test3");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status = FUNC2 ( &hKey, KEY_ALL_ACCESS , &ObjectAttributes
		,0,NULL,REG_OPTION_NON_VOLATILE,NULL);
  FUNC10("\t\t\t\t\tStatus=%x\n",Status);
  FUNC10("NtOpenKey: ");
  Status=FUNC5( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
  FUNC10("\t\tStatus=%x\n",Status);
  FUNC1(hKey);
  FUNC10("  ...\\testNonVolatile :");
  FUNC8(&KeyName, L"TestNonVolatile");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, hKey1, NULL);
  Status = FUNC2 ( &hKey, KEY_ALL_ACCESS , &ObjectAttributes
		,0,NULL,REG_OPTION_NON_VOLATILE,NULL);
  FUNC10("\t\t\t\tStatus=%x\n",Status);
  FUNC1(hKey1);
  FUNC8(&ValueName, L"TestREG_SZ");
  FUNC10("NtSetValueKey reg_sz: ");
  Status=FUNC6(hKey,&ValueName,0,REG_SZ,(PVOID)L"Test Reg_sz",24);
  FUNC10("\t\t\t\tStatus=%x\n",Status);
  FUNC8(&ValueName, L"TestDWORD");
  FUNC10("NtSetValueKey reg_dword: ");
  Status=FUNC6(hKey,&ValueName,0,REG_DWORD,(PVOID)"reac",4);
  FUNC10("\t\t\tStatus=%x\n",Status);
  FUNC1(hKey);
  FUNC10("NtOpenKey \\Registry\\Machine\\Software\\test3reactos\\test3\\testNonVolatile : ");
  FUNC8(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos\\test3\\testNonVolatile");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  Status=FUNC5( &hKey, MAXIMUM_ALLOWED, &ObjectAttributes);
  FUNC10("\t\t\t\tStatus =%x\n",Status);
  if(Status==0)
  {
    FUNC10("NtEnumerateValueKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=FUNC4(hKey,Index++,KeyValueFullInformation
		,&KeyValueInformation[0], sizeof(KeyValueInformation)
		,&Length);
      if(Status== STATUS_SUCCESS)
	{
        FUNC10("\tValue:DO=%d, DL=%d, NL=%d, Name = "
		,KeyValueInformation[0].DataOffset
		,KeyValueInformation[0].DataLength
		,KeyValueInformation[0].NameLength);
	  for (i=0;i<KeyValueInformation[0].NameLength/2;i++)
		FUNC10("%C",KeyValueInformation[0].Name[i]);
        FUNC10(", Type = %d\n",KeyValueInformation[0].Type);
	  if (KeyValueInformation[0].Type == REG_SZ)
          FUNC10("\t\tValue = %S\n",((char*)&KeyValueInformation[0]
    					+KeyValueInformation[0].DataOffset));
	}
    }
  }
  FUNC1(hKey);
  FUNC10("delete \\Registry\\Machine\\software\\test3reactos ?");
  FUNC7(InputHandle, Buffer, 3, &Result, NULL) ;
  if (Buffer[0] != 'y' && Buffer[0] != 'Y') return;
  FUNC8(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos\\test3\\testNonvolatile");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  FUNC10("NtOpenKey : ");
  Status=FUNC5( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  FUNC10("\t\t\t\tStatus =%x\n",Status);
  FUNC10("NtDeleteKey : ");
  Status=FUNC3(hKey);
  FUNC10("\t\t\t\tStatus =%x\n",Status);
  FUNC8(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos\\test3");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  FUNC10("NtOpenKey : ");
  Status=FUNC5( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  FUNC10("\t\t\t\tStatus =%x\n",Status);
  FUNC10("NtDeleteKey : ");
  Status=FUNC3(hKey);
  FUNC10("\t\t\t\tStatus =%x\n",Status);
  FUNC1(hKey);
  FUNC8(&KeyName, L"\\Registry\\Machine\\Software\\test3reactos");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  FUNC10("NtOpenKey : ");
  Status=FUNC5( &hKey, KEY_ALL_ACCESS, &ObjectAttributes);
  FUNC10("\t\t\t\tStatus =%x\n",Status);
  FUNC10("NtDeleteKey : ");
  Status=FUNC3(hKey);
  FUNC10("\t\t\t\tStatus =%x\n",Status);
  FUNC1(hKey);
}