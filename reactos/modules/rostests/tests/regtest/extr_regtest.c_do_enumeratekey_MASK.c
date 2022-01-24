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
struct TYPE_3__ {int NameLength; int /*<<< orphan*/ * Name; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KeyInformation ;
typedef  TYPE_1__ KEY_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KeyBasicInformation ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void FUNC6(PWSTR Name)
{
 ULONG Index,Length,i;
 KEY_BASIC_INFORMATION KeyInformation[5];
 NTSTATUS Status;
 OBJECT_ATTRIBUTES ObjectAttributes;
 HANDLE hKey1;
 UNICODE_STRING KeyName;

  FUNC4(&KeyName, Name);
  FUNC0(&ObjectAttributes, &KeyName, OBJ_CASE_INSENSITIVE
				, NULL, NULL);
  Status=FUNC3( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
    FUNC5("NtEnumerateKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=FUNC2(hKey1,Index++,KeyBasicInformation
		,&KeyInformation[0], sizeof(KeyInformation)
		,&Length);
      if(Status== STATUS_SUCCESS)
	{
        FUNC5("\tSubKey Name = ");
	  for (i=0;i<KeyInformation[0].NameLength/2;i++)
		FUNC5("%C",KeyInformation[0].Name[i]);
        FUNC5("\n");
	}
    }
  FUNC1(hKey1);
}