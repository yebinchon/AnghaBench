#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/ * Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  Buf2 ;
typedef  int /*<<< orphan*/  Buf1 ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    WCHAR Buf1[10];
    WCHAR Buf2[10];

    UNICODE_STRING Str1, Str2;
    UNICODE_STRING DllName;
    NTSTATUS Status;

    FUNC1(&Str1, Buf1, sizeof(Buf1));
    FUNC1(&Str2, Buf2, sizeof(Buf2));

    FUNC2(&DllName, L"kernel32.dll");
    Status = FUNC0(&DllName, &Str1, &Str2);
    FUNC4(Status == STATUS_SUCCESS, "0x%lx\n", Status);
    FUNC5(&Str1, &Str2, L"kernel32.dll");
    FUNC4(Str1.Buffer != Buf1, "Expected a changed buffer\n");
    FUNC4(Str2.Buffer != Buf2, "Expected a changed buffer\n");
    FUNC3(&Str1, Buf1, sizeof(Buf1));
    FUNC3(&Str2, Buf2, sizeof(Buf2));
}