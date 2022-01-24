#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ANSI_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC5(const char *name, UNICODE_STRING *nameW)
{
    UNICODE_STRING strW;
    ANSI_STRING str;
    NTSTATUS status;
    BOOLEAN ret;

    FUNC4(&str, name);

    status = FUNC1(&strW, &str, TRUE);
    FUNC0(!status, "RtlAnsiStringToUnicodeString failed with %08x\n", status);

    ret = FUNC2(strW.Buffer, nameW, NULL, NULL);
    FUNC0(ret, "RtlDosPathNameToNtPathName_U failed\n");

    FUNC3(&strW);
}