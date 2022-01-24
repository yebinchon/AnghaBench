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
struct TYPE_4__ {int NameLength; int /*<<< orphan*/ * Name; } ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KeyInformation ;
typedef  TYPE_1__ KEY_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  KeyBasicInformation ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void FUNC8(void)
{
  HANDLE hKey = NULL;
  OBJECT_ATTRIBUTES ObjectAttributes;
  NTSTATUS Status;
  UNICODE_STRING KeyName = FUNC6(L"\\Registry\\Machine\\Software");
  ULONG Index;
  ULONG Length;
  ULONG i;
  KEY_BASIC_INFORMATION KeyInformation[5];

  FUNC7("Enumerate key '\\Registry\\Machine\\Software':\n");

  FUNC0(&ObjectAttributes,
			     &KeyName,
			     OBJ_CASE_INSENSITIVE,
			     NULL,
			     NULL);
  FUNC7("NtOpenKey:\n");
  Status = FUNC4(&hKey,
		     KEY_ALL_ACCESS,
		     &ObjectAttributes);
  FUNC7("  Status = %lx\n", Status);
  if (!FUNC1(Status))
    return;

  FUNC7("NtQueryKey:\n");
  Status = FUNC5(hKey,
		      KeyBasicInformation,
		      &KeyInformation[0],
		      sizeof(KeyInformation),
		      &Length);
  FUNC7("  Status = %lx\n", Status);
  if (FUNC1(Status))
    {
      FUNC7("\tKey Name = ");
      for (i = 0; i < KeyInformation[0].NameLength / 2; i++)
	FUNC7("%C", KeyInformation[0].Name[i]);
      FUNC7("\n");
    }

  FUNC7("NtEnumerateKey:\n");
  Index=0;
  while(FUNC1(Status))
    {
      Status = FUNC3(hKey,
			      Index,
			      KeyBasicInformation,
			      &KeyInformation[0],
			      sizeof(KeyInformation),
			      &Length);
      if (FUNC1(Status))
	{
	  FUNC7("\tSubKey Name = ");
	  for (i = 0; i < KeyInformation[0].NameLength / 2; i++)
	    FUNC7("%C", KeyInformation[0].Name[i]);
	  FUNC7("\n");
	}
      Index++;
    }

  FUNC7("NtClose:\n");
  Status = FUNC2(hKey);
  FUNC7("  Status = %lx\n", Status);
}