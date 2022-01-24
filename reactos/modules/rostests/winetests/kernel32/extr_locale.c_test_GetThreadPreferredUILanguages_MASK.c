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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MUI_LANGUAGE_ID ; 
 int MUI_UI_FALLBACK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    BOOL ret;
    ULONG count, size;
    WCHAR *buf;

    if (!&pGetThreadPreferredUILanguages)
    {
        FUNC6("GetThreadPreferredUILanguages is not available.\n");
        return;
    }

    size = count = 0;
    ret = FUNC5(MUI_LANGUAGE_ID|MUI_UI_FALLBACK, &count, NULL, &size);
    FUNC4(ret, "got %u\n", FUNC0());
    FUNC4(count, "expected count > 0\n");
    FUNC4(size, "expected size > 0\n");

    count = 0;
    buf = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, size * sizeof(WCHAR));
    ret = FUNC5(MUI_LANGUAGE_ID|MUI_UI_FALLBACK, &count, buf, &size);
    FUNC4(ret, "got %u\n", FUNC0());
    FUNC4(count, "expected count > 0\n");
    FUNC3(FUNC1(), 0, buf);
}