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
typedef  int /*<<< orphan*/ * HRSRC ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 

unsigned char* FUNC8(HMODULE module, char* name, char* type, const char* desc, DWORD* len, BOOL duplicate)
{
	HGLOBAL res_handle;
	HRSRC res;
	unsigned char* p = NULL;

	res = FUNC0(module, name, type);
	if (res == NULL) {
		FUNC7("Could not locate resource '%s': %s\n", desc, FUNC4());
		goto out;
	}
	res_handle = FUNC1(module, res);
	if (res_handle == NULL) {
		FUNC7("Could not load resource '%s': %s\n", desc, FUNC4());
		goto out;
	}
	*len = FUNC3(module, res);

	if (duplicate) {
		p = (unsigned char*)FUNC5(*len);
		if (p == NULL) {
			FUNC7("Coult not allocate resource '%s'\n", desc);
			goto out;
		}
		FUNC6(p, FUNC2(res_handle), *len);
	} else {
		p = (unsigned char*)FUNC2(res_handle);
	}

out:
	return p;
}