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
struct access_res {int gothandle; int lasterr; scalar_t__ ignore; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int,int,int) ; 

__attribute__((used)) static void FUNC5(LPCSTR file, const struct access_res *ares, DWORD line)
{
    DWORD access = 0, share = 0;
    DWORD lasterr;
    HANDLE hfile;
    int i, j, idx = 0;

    for (i = 0; i < 4; i++)
    {
        if (i == 0) access = 0;
        if (i == 1) access = GENERIC_READ;
        if (i == 2) access = GENERIC_WRITE;
        if (i == 3) access = GENERIC_READ | GENERIC_WRITE;

        for (j = 0; j < 4; j++)
        {
            if (ares[idx].ignore)
                continue;

            if (j == 0) share = 0;
            if (j == 1) share = FILE_SHARE_READ;
            if (j == 2) share = FILE_SHARE_WRITE;
            if (j == 3) share = FILE_SHARE_READ | FILE_SHARE_WRITE;

            FUNC3(0xdeadbeef);
            hfile = FUNC1(file, access, share, NULL, OPEN_EXISTING,
                                FILE_ATTRIBUTE_NORMAL, 0);
            lasterr = FUNC2();

            FUNC4((hfile != INVALID_HANDLE_VALUE) == ares[idx].gothandle,
               "(%d, handle, %d): Expected %d, got %d\n",
               line, idx, ares[idx].gothandle,
               (hfile != INVALID_HANDLE_VALUE));

            FUNC4(lasterr == ares[idx].lasterr, "(%d, lasterr, %d): Expected %d, got %d\n",
               line, idx, ares[idx].lasterr, lasterr);

            FUNC0(hfile);
            idx++;
        }
    }
}