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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  LockCount; } ;
typedef  TYPE_1__* PXMS_HANDLE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  XMS_STATUS_INVALID_HANDLE ; 
 int /*<<< orphan*/  XMS_STATUS_NOT_LOCKED ; 
 int /*<<< orphan*/  XMS_STATUS_SUCCESS ; 

__attribute__((used)) static UCHAR FUNC2(WORD Handle)
{
    PXMS_HANDLE HandleEntry = FUNC0(Handle);

    if (!FUNC1(HandleEntry))
        return XMS_STATUS_INVALID_HANDLE;

    if (!HandleEntry->LockCount)
        return XMS_STATUS_NOT_LOCKED;

    /* Decrement the lock count */
    HandleEntry->LockCount--;

    return XMS_STATUS_SUCCESS;
}