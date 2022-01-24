#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {scalar_t__ handle; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  NTHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS
FUNC3(RDPCLIENT * This, NTHANDLE handle)
{
	int i = FUNC1(This, handle);
	if (i >= 0)
		This->rdpdr_device[i].handle = 0;

	FUNC2(This, handle, 0, STATUS_TIMEOUT);
	FUNC0(handle);
	return STATUS_SUCCESS;
}