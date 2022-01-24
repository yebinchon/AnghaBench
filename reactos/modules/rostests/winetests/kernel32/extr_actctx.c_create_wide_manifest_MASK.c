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
typedef  int WCHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int*,int) ; 
 scalar_t__ FUNC4 (char const*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static BOOL FUNC6(const char *filename, const char *manifest, BOOL fBOM, BOOL fReverse)
{
    WCHAR *wmanifest = FUNC1(FUNC0(), 0, (FUNC5(manifest)+2) * sizeof(WCHAR));
    BOOL ret;
    int offset = (fBOM ? 0 : 1);

    FUNC3(CP_ACP, 0, manifest, -1, &wmanifest[1], (FUNC5(manifest)+1));
    wmanifest[0] = 0xfeff;
    if (fReverse)
    {
        size_t i;
        for (i = 0; i < FUNC5(manifest)+1; i++)
            wmanifest[i] = (wmanifest[i] << 8) | ((wmanifest[i] >> 8) & 0xff);
    }
    ret = FUNC4(filename, (char *)&wmanifest[offset], (FUNC5(manifest)+1-offset) * sizeof(WCHAR), NULL, NULL);
    FUNC2(FUNC0(), 0, wmanifest);
    return ret;
}