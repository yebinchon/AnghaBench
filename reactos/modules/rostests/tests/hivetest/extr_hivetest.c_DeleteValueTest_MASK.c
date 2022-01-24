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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void FUNC7(void)
{
  OBJECT_ATTRIBUTES ObjectAttributes;
  UNICODE_STRING KeyName = FUNC5(L"\\Registry\\Machine\\Software\\testkey");
  UNICODE_STRING ValueName = FUNC5(L"TestValue");
  HANDLE KeyHandle;
  NTSTATUS Status;

  FUNC6("Open key '\\Registry\\Machine\\Software\\testkey':\n");

  FUNC0(&ObjectAttributes,
			     &KeyName,
			     OBJ_CASE_INSENSITIVE,
			     NULL,
			     NULL);
  Status=FUNC4(&KeyHandle,
		   MAXIMUM_ALLOWED,
		   &ObjectAttributes);
  FUNC6("  Status = %lx\n", Status);
  if (!FUNC1(Status))
    return;

  FUNC6("Delete value:\n");


  Status = FUNC3(KeyHandle,
			    &ValueName);
  FUNC6("  Status = %lx\n", Status);

  FUNC6("Close key:\n");
  Status = FUNC2(KeyHandle);
  FUNC6("  Status = %lx\n", Status);
}