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
 int /*<<< orphan*/  CP_OEMCP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(const char* src)
{
	int len;
	wchar_t* wdst = NULL;

	if (src == NULL)
		goto out;
	len = (int)FUNC3(src);
	while ((len > 0) && ((src[len-1] == 0x0A) || (src[len-1] == 0x0D) || (src[len-1] == ' ')))
		len--;
	if (len == 0)
		goto out;

	len = FUNC0(CP_OEMCP, 0, src, len, NULL, 0);
	if (len == 0)
		goto out;
	wdst = (wchar_t*)FUNC1(len+1, sizeof(wchar_t));
	if ((wdst == NULL) || (FUNC0(CP_OEMCP, 0, src, len, wdst, len+1) == 0))
		goto out;
	FUNC4("%S", wdst);

out:
	FUNC2(wdst);
}