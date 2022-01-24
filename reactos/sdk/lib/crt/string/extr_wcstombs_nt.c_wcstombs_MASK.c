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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

size_t FUNC4 (char *mbstr, const wchar_t *wcstr, size_t count)
{
	NTSTATUS Status;
	ULONG Size;
	ULONG Length;

	Length = (ULONG)FUNC3 (wcstr);

	if (mbstr == NULL)
	{
		FUNC2 (&Size,
		                           (wchar_t*)((size_t)wcstr),
		                           Length * sizeof(WCHAR));

		return (size_t)(Size / sizeof(char));
	}

	Status = FUNC1 (mbstr,
	                                 (ULONG)count,
	                                 &Size,
	                                 (wchar_t*)((size_t)wcstr),
	                                 Length * sizeof(WCHAR));
	if (!FUNC0(Status))
		return -1;

	return (size_t)(Size / sizeof(char));
}