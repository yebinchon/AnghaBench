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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MSG_DRIVE_LETTER ; 
 int /*<<< orphan*/  MSG_EPHEMERAL ; 
 int /*<<< orphan*/  MSG_PERSISTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(
	HANDLE			hDevice,
	ULONG			nDrive)
{
	CHAR			letter;

	FUNC0(MSG_DRIVE_LETTER, nDrive);

	FUNC1(hDevice, &letter);

	if (FUNC3(letter)) {
		FUNC0(MSG_PERSISTENT, FUNC5(letter));
	}

	while (FUNC2(hDevice, &letter) == ERROR_SUCCESS &&
		FUNC3(letter)) {
		FUNC0(MSG_EPHEMERAL, FUNC5(letter));
	}

	FUNC4("\n");
}