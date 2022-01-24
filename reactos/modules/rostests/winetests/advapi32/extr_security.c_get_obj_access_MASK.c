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
typedef  int /*<<< orphan*/  info ;
struct TYPE_3__ {int /*<<< orphan*/  GrantedAccess; } ;
typedef  TYPE_1__ OBJECT_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  ACCESS_MASK ;

/* Variables and functions */
 int /*<<< orphan*/  ObjectBasicInformation ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ACCESS_MASK FUNC2(HANDLE obj)
{
    OBJECT_BASIC_INFORMATION info;
    NTSTATUS status;

    if (!&pNtQueryObject) return 0;

    status = FUNC1(obj, ObjectBasicInformation, &info, sizeof(info), NULL);
    FUNC0(!status, "NtQueryObject error %#x\n", status);

    return info.GrantedAccess;
}