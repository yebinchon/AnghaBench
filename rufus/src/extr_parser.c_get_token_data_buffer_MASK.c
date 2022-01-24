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
typedef  int wchar_t ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int* FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (char const*) ; 
 char* FUNC3 (int*) ; 

char* FUNC4(const char* token, unsigned int n, const char* buffer, size_t buffer_size)
{
	unsigned int j, curly_count;
	wchar_t *wtoken = NULL, *wdata = NULL, *wbuffer = NULL, *wline = NULL;
	size_t i;
	BOOL done = FALSE;
	char* ret = NULL;

	// We're handling remote data => better safe than sorry
	if ((token == NULL) || (buffer == NULL) || (buffer_size <= 4) || (buffer_size > 65536))
		goto out;

	// Ensure that our buffer is NUL terminated
	if (buffer[buffer_size-1] != 0)
		goto out;

	wbuffer = FUNC2(buffer);
	wtoken = FUNC2(token);
	if ((wbuffer == NULL) || (wtoken == NULL))
		goto out;

	// Process individual lines (or multiple lines when between {}, for RTF)
	for (i=0,j=0,done=FALSE; (j!=n)&&(!done); ) {
		wline = &wbuffer[i];

		for(curly_count=0;((curly_count>0)||((wbuffer[i]!=L'\n')&&(wbuffer[i]!=L'\r')))&&(wbuffer[i]!=0);i++) {
			if (wbuffer[i] == L'{') curly_count++;
			if (wbuffer[i] == L'}') curly_count--;
		}
		if (wbuffer[i]==0) {
			done = TRUE;
		} else {
			wbuffer[i++] = 0;
		}
		wdata = FUNC0(wtoken, wline);
		if (wdata != NULL) {
			j++;
		}
	}
out:
	if (wdata != NULL)
		ret = FUNC3(wdata);
	FUNC1(wbuffer);
	FUNC1(wtoken);
	return ret;
}