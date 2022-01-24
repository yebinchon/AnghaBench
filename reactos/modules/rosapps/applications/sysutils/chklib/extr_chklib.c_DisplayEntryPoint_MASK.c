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
typedef  char* LPCSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FARPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 

__attribute__((used)) static
void
FUNC4(
	const HANDLE	dll,
	LPCSTR		SymbolName
	)
{
	FARPROC	EntryPoint;

	FUNC3(
		"[%s]\n",
		SymbolName
		);
	EntryPoint = FUNC1(
			dll,
			SymbolName
			);
	if (!EntryPoint)
	{
		FUNC2(
			L"GetProcAddress",
			FUNC0()
			);
		return;
	}
	FUNC3(
		"0x%p  %s\n",
		EntryPoint,
		SymbolName
		);
}