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
typedef  int /*<<< orphan*/  attr ;
struct TYPE_3__ {int Length; int /*<<< orphan*/ * SecurityQualityOfService; int /*<<< orphan*/ * SecurityDescriptor; scalar_t__ Attributes; int /*<<< orphan*/ * ObjectName; scalar_t__ RootDirectory; } ;
typedef  TYPE_1__ OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__ STATUS_OBJECT_TYPE_MISMATCH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    HANDLE h;
    NTSTATUS res;
    OBJECT_ATTRIBUTES attr;

    attr.Length                   = sizeof(attr);
    attr.RootDirectory            = 0;
    attr.ObjectName               = NULL;
    attr.Attributes               = 0;
    attr.SecurityDescriptor       = NULL;
    attr.SecurityQualityOfService = NULL;

    res = FUNC2( &h, 0, &attr, 0, 0 );
    FUNC0(!res, "can't create event: %x\n", res);

    res = FUNC3( h, 30, NULL );
    FUNC0(res == STATUS_OBJECT_TYPE_MISMATCH, "expected 0xc0000024, got %x\n", res);

    FUNC1( h );
}