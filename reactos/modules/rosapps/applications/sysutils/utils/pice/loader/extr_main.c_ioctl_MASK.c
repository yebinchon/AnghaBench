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
typedef  int /*<<< orphan*/  PDEBUGGER_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DEBUGGER_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int FUNC4( HANDLE device, DWORD ioctrlcode, PDEBUGGER_STATUS_BLOCK psb)
{
	 DEBUGGER_STATUS_BLOCK tsb;
	 DWORD bytesreturned;
	 if( !FUNC0( device, ioctrlcode, psb, sizeof(DEBUGGER_STATUS_BLOCK),
			&tsb, sizeof(DEBUGGER_STATUS_BLOCK),&bytesreturned, NULL) ){
		FUNC3("Error in DeviceIoControl: %ld\n", FUNC1());
		return -EINVAL;
	 }
	 else{
		FUNC2( psb, &tsb, sizeof(DEBUGGER_STATUS_BLOCK) );
	 }
	 return 0;
}