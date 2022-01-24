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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,char const*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

size_t FUNC4 (wchar_t *wcstr, const char *mbstr, size_t count)
{
	NTSTATUS Status;
	ULONG Size;
	ULONG Length;

	Length = (ULONG)FUNC3 (mbstr);

	if (wcstr == NULL)
	{
		FUNC2 (&Size,
		                           mbstr,
		                           Length);

		return (size_t)(Size / sizeof(wchar_t));
	}

	Status = FUNC1 (wcstr,
	                                 (ULONG)count * sizeof(WCHAR),
	                                 &Size,
	                                 mbstr,
	                                 Length);
	if (!FUNC0(Status))
		return -1;

	return (size_t)(Size / sizeof(wchar_t));
}