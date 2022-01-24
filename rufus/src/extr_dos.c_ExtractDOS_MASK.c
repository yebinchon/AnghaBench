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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
#define  BT_FREEDOS 129 
#define  BT_MSDOS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  hBootType ; 

BOOL FUNC4(const char* path)
{
	switch(FUNC1(hBootType, FUNC0(hBootType))) {
	case BT_MSDOS:
		return FUNC3(path);
	case BT_FREEDOS:
		return FUNC2(path);
	}
	return FALSE;
}