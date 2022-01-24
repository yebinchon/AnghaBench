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
typedef  scalar_t__ wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__ const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (scalar_t__ const*,char*,int) ; 

__attribute__((used)) static __inline char* FUNC4(const wchar_t* wstr)
{
	int size = 0;
	char* str = NULL;

	// Convert the empty string too
	if (wstr[0] == 0)
		return FUNC1(1, 1);

	// Find out the size we need to allocate for our converted string
	size = FUNC0(CP_UTF8, 0, wstr, -1, NULL, 0, NULL, NULL);
	if (size <= 1)	// An empty string would be size 1
		return NULL;

	if ((str = (char*)FUNC1(size, 1)) == NULL)
		return NULL;

	if (FUNC3(wstr, str, size) != size) {
		FUNC2(str);
		return NULL;
	}

	return str;
}