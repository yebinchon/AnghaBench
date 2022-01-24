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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  __ms_va_list ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
struct TYPE_7__ {int /*<<< orphan*/  hstatusbar; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ DWORD_PTR ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ; 
 int FORMAT_MESSAGE_FROM_STRING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_2__ Globals ; 
 int /*<<< orphan*/  IDS_FREE_SPACE_FMT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_SETTEXTW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sQMarks ; 

__attribute__((used)) static void FUNC6(void)
{
	ULARGE_INTEGER ulFreeBytesToCaller, ulTotalBytes, ulFreeBytes;
	WCHAR fmt[64], b1[64], b2[64], buffer[BUFFER_LEN];

	if (FUNC1(NULL, &ulFreeBytesToCaller, &ulTotalBytes, &ulFreeBytes)) {
		DWORD_PTR args[2];
		FUNC4(b1, ulFreeBytesToCaller.QuadPart);
		FUNC4(b2, ulTotalBytes.QuadPart);
		args[0] = (DWORD_PTR)b1;
		args[1] = (DWORD_PTR)b2;
		FUNC0(FORMAT_MESSAGE_FROM_STRING|FORMAT_MESSAGE_ARGUMENT_ARRAY,
		               FUNC2(fmt,IDS_FREE_SPACE_FMT), 0, 0, buffer,
		               sizeof(buffer)/sizeof(*buffer), (__ms_va_list*)args);
	} else
		FUNC5(buffer, sQMarks);

	FUNC3(Globals.hstatusbar, SB_SETTEXTW, 0, (LPARAM)buffer);
}