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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_3__ {scalar_t__ Type; int NameLength; int /*<<< orphan*/ * Name; int /*<<< orphan*/  DataLength; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KeyValueInformation ;
typedef  TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int KEY_ALL_ACCESS ; 
 int KEY_CREATE_LINK ; 
 int /*<<< orphan*/  KeyValueFullInformation ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int OBJ_CASE_INSENSITIVE ; 
 int OBJ_OPENIF ; 
 int OBJ_OPENLINK ; 
 scalar_t__ REG_LINK ; 
 int REG_OPTION_CREATE_LINK ; 
 int REG_OPTION_VOLATILE ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void FUNC8(void)
{
  HANDLE hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName,ValueName;
  NTSTATUS Status;
  KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];
  ULONG Length,i;

  FUNC7("Create target key\n");
  FUNC7("  Key: \\Registry\\Machine\\SOFTWARE\\Reactos\n");
  FUNC6(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Reactos");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status = FUNC3(&hKey, KEY_ALL_ACCESS , &ObjectAttributes
		,0,NULL, REG_OPTION_VOLATILE,NULL);
  FUNC7("  NtCreateKey() called (Status %lx)\n",Status);
  if (!FUNC1(Status))
    return;

  FUNC7("Create target value\n");
  FUNC7("  Value: TestValue = 'Test String'\n");
  FUNC6(&ValueName, L"TestValue");
  Status=FUNC5(hKey,&ValueName,0,REG_SZ,(PVOID)L"TestString",22);
  FUNC7("  NtSetValueKey() called (Status %lx)\n",Status);
  if (!FUNC1(Status))
    return;

  FUNC7("Close target key\n");
  FUNC2(hKey);


  FUNC7("Create link key\n");
  FUNC7("  Key: \\Registry\\Machine\\SOFTWARE\\Test\n");
  FUNC6(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Test");
  FUNC0(&ObjectAttributes,
			     &KeyName,
			     OBJ_CASE_INSENSITIVE | OBJ_OPENLINK,
			     NULL,
			     NULL);
  Status = FUNC3(&hKey,
		       KEY_ALL_ACCESS | KEY_CREATE_LINK,
		       &ObjectAttributes,
		       0,
		       NULL,
		       REG_OPTION_VOLATILE | REG_OPTION_CREATE_LINK,
		       NULL);
  FUNC7("  NtCreateKey() called (Status %lx)\n",Status);
  if (!FUNC1(Status))
    return;

  FUNC7("Create link value\n");
  FUNC7("  Value: SymbolicLinkValue = '\\Registry\\Machine\\SOFTWARE\\Reactos'\n");
  FUNC6(&ValueName, L"SymbolicLinkValue");
  Status=FUNC5(hKey,&ValueName,0,REG_LINK,(PVOID)L"\\Registry\\Machine\\SOFTWARE\\Reactos",68);
  FUNC7("  NtSetValueKey() called (Status %lx)\n",Status);
  if (!FUNC1(Status))
    {
      FUNC7("Creating link value failed! Test failed!\n");
      FUNC2(hKey);
      return;
    }

  FUNC7("Close link key\n");
  FUNC2(hKey);

  FUNC7("Open link key\n");
  FUNC7("  Key: \\Registry\\Machine\\SOFTWARE\\Test\n");
  FUNC6(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Test");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE | OBJ_OPENIF
				, NULL, NULL);
  Status = FUNC3(&hKey, KEY_ALL_ACCESS , &ObjectAttributes
		,0,NULL, REG_OPTION_VOLATILE, NULL);
  FUNC7("  NtCreateKey() called (Status %lx)\n",Status);
  if (!FUNC1(Status))
    return;

  FUNC7("Query value\n");
  FUNC7("  Value: TestValue\n");
  FUNC6(&ValueName, L"TestValue");
  Status=FUNC4(hKey,
			 &ValueName,
			 KeyValueFullInformation,
			 &KeyValueInformation[0],
			 sizeof(KeyValueInformation),
			 &Length);
  FUNC7("  NtQueryValueKey() called (Status %lx)\n",Status);
  if (Status == STATUS_SUCCESS)
    {
      FUNC7("  Value: Type %d  DataLength %d NameLength %d  Name '",
	      KeyValueInformation[0].Type,
	      KeyValueInformation[0].DataLength,
	      KeyValueInformation[0].NameLength);
      for (i=0; i < KeyValueInformation[0].NameLength / sizeof(WCHAR); i++)
	FUNC7("%C",KeyValueInformation[0].Name[i]);
      FUNC7("'\n");
      if (KeyValueInformation[0].Type == REG_SZ)
	FUNC7("  Value '%S'\n",
		KeyValueInformation[0].Name+1
		+KeyValueInformation[0].NameLength/2);
    }

  FUNC7("Close link key\n");
  FUNC2(hKey);

  FUNC7("Test successful!\n");
}