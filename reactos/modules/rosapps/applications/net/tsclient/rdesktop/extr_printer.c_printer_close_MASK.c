#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  printer_fp; } ;
struct TYPE_7__ {TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {scalar_t__ handle; TYPE_3__* pdevice_data; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  TYPE_3__ PRINTER ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  NTHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS
FUNC2(RDPCLIENT * This, NTHANDLE handle)
{
	int i = FUNC0(This, handle);
	if (i >= 0)
	{
		PRINTER *pprinter_data = This->rdpdr_device[i].pdevice_data;
		if (pprinter_data)
			FUNC1(pprinter_data->printer_fp);
		This->rdpdr_device[i].handle = 0;
	}
	return STATUS_SUCCESS;
}