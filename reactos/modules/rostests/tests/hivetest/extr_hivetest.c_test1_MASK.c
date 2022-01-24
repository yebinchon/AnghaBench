#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_4__ {int NameLength; scalar_t__* Name; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KeyInformation ;
typedef  TYPE_1__ KEY_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KeyBasicInformation ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(void)
{
 HANDLE hKey = NULL, hKey1;
 OBJECT_ATTRIBUTES ObjectAttributes;
 NTSTATUS Status;
 UNICODE_STRING KeyName = FUNC5(L"\\Registry\\Machine\\Software");
 ULONG Index,Length,i;
 KEY_BASIC_INFORMATION KeyInformation[5];

#if 0
  dprintf("NtOpenKey \\Registry : ");
#endif
  FUNC6("NtOpenKey \\Registry\\Machine\\Software : ");
  FUNC0(&ObjectAttributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               NULL,
                               NULL);
  Status=FUNC3( &hKey1, MAXIMUM_ALLOWED, &ObjectAttributes);
  FUNC6("\t\t\t\tStatus =%x\n",Status);
  if(Status==0)
  {
    FUNC6("NtQueryKey : ");
    Status=FUNC4(hKey1,KeyBasicInformation
		,&KeyInformation[0], sizeof(KeyInformation)
		,&Length);
    FUNC6("\t\t\t\t\tStatus =%x\n",Status);
    if (Status == STATUS_SUCCESS)
    {
        FUNC6("\tKey Name = ");
	  for (i=0;i<KeyInformation[0].NameLength/2;i++)
		FUNC6("%C",KeyInformation[0].Name[i]);
        FUNC6("\n");
    }
    FUNC6("NtEnumerateKey : \n");
    Index=0;
    while(Status == STATUS_SUCCESS)
    {
      Status=FUNC2(hKey1,Index++,KeyBasicInformation
		,&KeyInformation[0], sizeof(KeyInformation)
		,&Length);
      if(Status== STATUS_SUCCESS)
	{
        FUNC6("\tSubKey Name = ");
	  for (i=0;i<KeyInformation[0].NameLength/2;i++)
		FUNC6("%C",KeyInformation[0].Name[i]);
        FUNC6("\n");
	}
    }
    FUNC6("NtClose : ");
    Status = FUNC1( hKey1 );
    FUNC6("\t\t\t\t\tStatus =%x\n",Status);
  }
  FUNC1(hKey);
}