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

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static __inline char* FUNC3(const wchar_t* wstr, int wlen)
{
	int size = 0;
	char* str = NULL;

	// Find out the size we need to allocate for our converted string
	size = FUNC0(CP_UTF8, 0, wstr, wlen, NULL, 0, NULL, NULL);
	if (size <= 1)	// An empty string would be size 1
		return NULL;

	if ((str = (char*)FUNC1(size, 1)) == NULL)
		return NULL;

	if (FUNC0(CP_UTF8, 0, wstr, wlen, str, size, NULL, NULL) != size) {
		FUNC2(str);
		return NULL;
	}

	return str;
}