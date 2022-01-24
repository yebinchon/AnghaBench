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
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_ENGLISH_US ; 
 scalar_t__ FUNC6 (char*,char*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int) ; 

__attribute__((used)) static BOOL FUNC9(const char *filename)
{
    DWORD size, ver;
    BOOL isstub = FALSE;
    char *p, *data;

    size = FUNC1(filename, &ver);
    if (!size) return FALSE;

    data = FUNC3(FUNC2(), 0, size);
    if (!data) return FALSE;

    if (FUNC0(filename, ver, size, data))
    {
        char buf[256];

        FUNC8(buf, "\\StringFileInfo\\%04x%04x\\OriginalFilename", FUNC5(LANG_ENGLISH, SUBLANG_ENGLISH_US), 1200);
        if (FUNC6(data, buf, (void**)&p, &size))
            isstub = !FUNC7("wcodstub.dll", p);
    }
    FUNC4(FUNC2(), 0, data);

    return isstub;
}