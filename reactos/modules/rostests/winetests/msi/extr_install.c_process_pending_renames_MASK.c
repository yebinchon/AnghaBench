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
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int MOVEFILE_COPY_ALLOWED ; 
 int MOVEFILE_REPLACE_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  REG_MULTI_SZ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  rename_ops ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static void FUNC14(HKEY hkey)
{
    char *buf, *src, *dst, *buf2, *buf2ptr;
    DWORD size;
    LONG ret;
    BOOL found = FALSE;

    ret = FUNC7(hkey, rename_ops, NULL, NULL, NULL, &size);
    FUNC11(!ret, "RegQueryValueExA failed %d\n", ret);

    buf = FUNC3(FUNC2(), 0, size + 1);
    buf2ptr = buf2 = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, size + 1);

    ret = FUNC7(hkey, rename_ops, NULL, NULL, (LPBYTE)buf, &size);
    buf[size] = 0;
    FUNC11(!ret, "RegQueryValueExA failed %d\n", ret);
    if (ret) return;

    for (src = buf; *src; src = dst + FUNC12(dst) + 1)
    {
        DWORD flags = MOVEFILE_COPY_ALLOWED;
        BOOL fileret;

        dst = src + FUNC12(src) + 1;

        if (!FUNC13(src, "msitest"))
        {
            FUNC10(buf2ptr, src);
            buf2ptr += FUNC12(src) + 1;
            FUNC10(buf2ptr, dst);
            buf2ptr += FUNC12(dst) + 1;
            continue;
        }

        found = TRUE;

        if (*dst == '!')
        {
            flags |= MOVEFILE_REPLACE_EXISTING;
            dst++;
        }
        if (src[0] == '\\' && src[1] == '?' && src[2] == '?' && src[3] == '\\') src += 4;
        if (*dst)
        {
            if (dst[0] == '\\' && dst[1] == '?' && dst[2] == '?' && dst[3] == '\\') dst += 4;
            fileret = FUNC5(src, dst, flags);
            FUNC11(fileret, "Failed to move file %s -> %s (%u)\n", src, dst, FUNC1());
        }
        else
        {
            fileret = FUNC0(src);
            FUNC11(fileret || FUNC9(!fileret) /* win2k3 */, "Failed to delete file %s (%u)\n", src, FUNC1());
        }
    }

    FUNC11(found, "Expected a 'msitest' entry\n");

    if (*buf2)
        FUNC8(hkey, rename_ops, 0, REG_MULTI_SZ, (LPBYTE)buf2, buf2ptr + 1 - buf2);
    else
        FUNC6(hkey, rename_ops);

    FUNC4(FUNC2(), 0, buf);
    FUNC4(FUNC2(), 0, buf2);
}