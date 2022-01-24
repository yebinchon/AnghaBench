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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int OBJ_CASE_INSENSITIVE ; 
 int OBJ_OPENIF ; 
 int OBJ_OPENLINK ; 
 int REG_OPTION_OPEN_LINK ; 
 int REG_OPTION_VOLATILE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

void FUNC8(void)
{
  HKEY hKey;
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName,ValueName;
  NTSTATUS Status;

  FUNC7("Open link key\n");
  FUNC7("  Key: \\Registry\\Machine\\SOFTWARE\\Test\n");
  FUNC6(&KeyName, L"\\Registry\\Machine\\SOFTWARE\\Test");
  FUNC0(&ObjectAttributes,
			     &KeyName,
			     OBJ_CASE_INSENSITIVE | OBJ_OPENIF | OBJ_OPENLINK,
			     NULL,
			     NULL);
  Status = FUNC3(&hKey,
		       KEY_ALL_ACCESS,
		       &ObjectAttributes,
		       0,
		       NULL,
		       REG_OPTION_VOLATILE | REG_OPTION_OPEN_LINK,
		       NULL);
  FUNC7("  NtCreateKey() called (Status %lx)\n",Status);
  if (!FUNC1(Status))
    {
      FUNC7("Could not open the link key. Please run the link create test first!\n");
      return;
    }

  FUNC7("Delete link value\n");
  FUNC6(&ValueName, L"SymbolicLinkValue");
  Status = FUNC5(hKey,
			    &ValueName);
  FUNC7("  NtDeleteValueKey() called (Status %lx)\n",Status);

  FUNC7("Delete link key\n");
  Status=FUNC4(hKey);
  FUNC7("  NtDeleteKey() called (Status %lx)\n",Status);

  FUNC7("Close link key\n");
  FUNC2(hKey);
}