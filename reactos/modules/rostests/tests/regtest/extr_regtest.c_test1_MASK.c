#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_8__ {int NameLength; char** Name; } ;
struct TYPE_7__ {int DataOffset; int NameLength; char** Name; char* Type; int /*<<< orphan*/  DataLength; } ;
typedef  char* PWCHAR ;
typedef  int PCHAR ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  char* NTSTATUS ;
typedef  int /*<<< orphan*/  KeyValueInformation ;
typedef  int /*<<< orphan*/  KeyInformation ;
typedef  TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef  TYPE_2__ KEY_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/ * HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  KeyBasicInformation ; 
 int /*<<< orphan*/  KeyValueFullInformation ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int,int*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

void FUNC10(void)
{
 HKEY hKey = NULL, hKey1;
 OBJECT_ATTRIBUTES ObjectAttributes;
 NTSTATUS Status;
 UNICODE_STRING KeyName = FUNC7(L"\\Registry");
 ULONG Index,Length,i;
 KEY_BASIC_INFORMATION KeyInformation[5];
 KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];

  FUNC9("NtOpenKey \\Registry : ");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  Status=FUNC4( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
  FUNC9("\t\t\t\tStatus =%x\n",Status);
  if(Status==0)
  {
    FUNC9("NtQueryKey : ");
    Status=FUNC5(hKey1,KeyBasicInformation
		,&KeyInformation[0], sizeof(KeyInformation)
		,&Length);
    FUNC9("\t\t\t\t\tStatus =%x\n",Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC9("\tKey Name = ");
	  for (i=0;i<KeyInformation[0].NameLength/2;i++)
		FUNC9("%C",KeyInformation[0].Name[i]);
        FUNC9("\n");
    }
    FUNC9("NtEnumerateKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=FUNC2(hKey1,Index++,KeyBasicInformation
		,&KeyInformation[0], sizeof(KeyInformation)
		,&Length);
      if(Status== STATUS_SUCCESS)
	{
        FUNC9("\tSubKey Name = ");
	  for (i=0;i<KeyInformation[0].NameLength/2;i++)
		FUNC9("%C",KeyInformation[0].Name[i]);
        FUNC9("\n");
	}
    }
    FUNC9("NtClose : ");
    Status = FUNC1( hKey1 );
    FUNC9("\t\t\t\t\tStatus =%x\n",Status);
  }
  FUNC1(hKey);

  FUNC9("NtOpenKey \\Registry\\Machine : ");
  FUNC8(&KeyName, L"\\Registry\\Machine");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  Status=FUNC4( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
  FUNC9("\t\t\tStatus =%x\n",Status);

  FUNC9("NtOpenKey System\\Setup : ");
  FUNC8(&KeyName, L"System\\Setup");
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, hKey1 , NULL);
  Status = FUNC4 ( &hKey, KEY_READ , &ObjectAttributes);
  FUNC9("\t\t\tStatus =%x\n",Status);
  if(Status==0)
  {
    FUNC9("NtQueryValueKey : ");
    FUNC8(&KeyName, L"CmdLine");
    Status=FUNC6(hKey,&KeyName,KeyValueFullInformation
		,&KeyValueInformation[0], sizeof(KeyValueInformation)
		,&Length);
    FUNC9("\t\t\t\tStatus =%x\n",Status);
    if (Status == STATUS_SUCCESS)
    {
      FUNC9("\tValue:DO=%d, DL=%d, NL=%d, Name = "
	      ,KeyValueInformation[0].DataOffset
	      ,KeyValueInformation[0].DataLength
	      ,KeyValueInformation[0].NameLength);
      for (i=0;i<10 && i<KeyValueInformation[0].NameLength/2;i++)
	FUNC9("%C",KeyValueInformation[0].Name[i]);
      FUNC9("\n");
      FUNC9("\t\tType = %d\n",KeyValueInformation[0].Type);
      if (KeyValueInformation[0].Type == REG_SZ)
	FUNC9("\t\tValue = %S\n",
		(PWCHAR)((PCHAR)&KeyValueInformation[0] + KeyValueInformation[0].DataOffset));
    }
    FUNC9("NtEnumerateValueKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=FUNC3(hKey,Index++,KeyValueFullInformation
		,&KeyValueInformation[0], sizeof(KeyValueInformation)
		,&Length);
      if(Status== STATUS_SUCCESS)
	{
        FUNC9("\tValue:DO=%d, DL=%d, NL=%d, Name = "
		,KeyValueInformation[0].DataOffset
		,KeyValueInformation[0].DataLength
		,KeyValueInformation[0].NameLength);
	  for (i=0;i<KeyValueInformation[0].NameLength/2;i++)
		FUNC9("%C",KeyValueInformation[0].Name[i]);
        FUNC9(", Type = %d\n",KeyValueInformation[0].Type);
	  if (KeyValueInformation[0].Type == REG_SZ)
          FUNC9("\t\tValue = %S\n",((char*)&KeyValueInformation[0]
    					+KeyValueInformation[0].DataOffset));
	}
    }
    FUNC9("NtClose : ");
    Status = FUNC1( hKey );
    FUNC9("\t\t\t\t\tStatus =%x\n",Status);
  }
  FUNC1( hKey1 );
}