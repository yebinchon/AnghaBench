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
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  char* NTSTATUS ;
typedef  int /*<<< orphan*/  KeyValueInformation ;
typedef  TYPE_1__ KEY_VALUE_FULL_INFORMATION ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  char* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KeyValueFullInformation ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 scalar_t__ REG_DWORD ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(void)
{
  KEY_VALUE_FULL_INFORMATION KeyValueInformation[5];
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName = FUNC5(L"\\Registry\\Machine\\Software\\testkey");
  ULONG Index,Length,i;
  HANDLE hKey = NULL;
  NTSTATUS Status;

  FUNC6("Open key '\\Registry\\Machine\\Software\\testkey':\n");

  FUNC0(&ObjectAttributes,
			     &KeyName,
			     OBJ_CASE_INSENSITIVE,
			     NULL,
			     NULL);
  Status=FUNC4(&hKey,
		   MAXIMUM_ALLOWED,
		   &ObjectAttributes);
  FUNC6("  Status = %lx\n", Status);
  if (!FUNC1(Status))
    return;

  FUNC6("Enumerate values:\n");
  Index = 0;
  while (Status == STATUS_SUCCESS)
    {
      Status = FUNC3(hKey,
				   Index++,
				   KeyValueFullInformation,
				   &KeyValueInformation[0],
				   sizeof(KeyValueInformation),
				   &Length);
      if (Status == STATUS_SUCCESS)
	{
	  FUNC6("    Value:DO=%d, DL=%d, NL=%d, Name = ",
		  KeyValueInformation[0].DataOffset,
		  KeyValueInformation[0].DataLength,
		  KeyValueInformation[0].NameLength);
	  for (i = 0; i < KeyValueInformation[0].NameLength / 2; i++)
	    FUNC6("%C", KeyValueInformation[0].Name[i]);
	  FUNC6(", Type = %d\n", KeyValueInformation[0].Type);

	  if (KeyValueInformation[0].Type == REG_SZ)
	    FUNC6("    Value = %S\n",
		    ((char*)&KeyValueInformation[0]+KeyValueInformation[0].DataOffset));

	  if (KeyValueInformation[0].Type == REG_DWORD)
	    FUNC6("    Value = %X\n",
		    *((DWORD*)((char*)&KeyValueInformation[0]+KeyValueInformation[0].DataOffset)));
	}
    }

  FUNC6("NtClose:\n");
  Status = FUNC2(hKey);
  FUNC6("  Status = %lx\n", Status);
}