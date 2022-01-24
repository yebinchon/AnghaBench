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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  printer_fp; } ;
typedef  int /*<<< orphan*/  RDPCLIENT ;
typedef  TYPE_1__ PRINTER ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  NTHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_INVALID_HANDLE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS
FUNC3(RDPCLIENT * This, NTHANDLE handle, uint8 * data, uint32 length, uint32 offset, uint32 * result)
{
	PRINTER *pprinter_data;

	pprinter_data = FUNC2(This, handle);
	*result = length * FUNC1(data, length, 1, pprinter_data->printer_fp);

	if (FUNC0(pprinter_data->printer_fp))
	{
		*result = 0;
		return STATUS_INVALID_HANDLE;
	}
	return STATUS_SUCCESS;
}