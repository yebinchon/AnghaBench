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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * access_modes ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,int,int,int) ; 
 int /*<<< orphan*/ * share_modes ; 

__attribute__((used)) static void FUNC7(LPCSTR file, const struct access_res *ares, DWORD line)
{
    int i, j, idx = 0;

    for (i = 0; i < FUNC0(access_modes); i++)
    {
        for (j = 0; j < FUNC0(share_modes); j++)
        {
            DWORD lasterr;
            HANDLE hfile;

            if (ares[idx].ignore)
                continue;

            FUNC4(0xdeadbeef);
            hfile = FUNC2(file, access_modes[i], share_modes[j], NULL, OPEN_EXISTING,
                                FILE_ATTRIBUTE_NORMAL, 0);
            lasterr = FUNC3();

            FUNC6((hfile != INVALID_HANDLE_VALUE) == ares[idx].gothandle,
               "(%d, handle, %d): Expected %d, got %d\n",
               line, idx, ares[idx].gothandle,
               (hfile != INVALID_HANDLE_VALUE));

            FUNC6(lasterr == ares[idx].lasterr ||
               FUNC5(lasterr == 0xdeadbeef) /* win9x */,
               "(%d, lasterr, %d): Expected %d, got %d\n",
               line, idx, ares[idx].lasterr, lasterr);

            FUNC1(hfile);
            idx++;
        }
    }
}