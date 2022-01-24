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
typedef  int /*<<< orphan*/  unauthorized ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*) ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static __inline char* FUNC3(char* filename, BOOL* is_identical)
{
	size_t i, j;
	char* ret = NULL;
	char unauthorized[] = { '*', '?', '<', '>', ':', '|' };

	*is_identical = TRUE;
	ret = FUNC0(filename);
	if (ret == NULL) {
		FUNC2("Could not allocate string for sanitized path");
		return NULL;
	}

	// Must start after the drive part (D:\...) so that we don't eliminate the first column
	for (i=2; i<FUNC1(ret); i++) {
		for (j=0; j<sizeof(unauthorized); j++) {
			if (ret[i] == unauthorized[j]) {
				ret[i] = '_';
				*is_identical = FALSE;
			}
		}
	}
	return ret;
}