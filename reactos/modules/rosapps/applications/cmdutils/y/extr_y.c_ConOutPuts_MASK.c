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
typedef  int /*<<< orphan*/  VOID ;
typedef  char* LPTSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static
VOID FUNC3 (LPTSTR szText)
{
	DWORD dwWritten;

	FUNC1 (FUNC0 (STD_OUTPUT_HANDLE), szText, FUNC2(szText), &dwWritten, NULL);
	FUNC1 (FUNC0 (STD_OUTPUT_HANDLE), "\n", 1, &dwWritten, NULL);
}