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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(int baselevel, LPWSTR pszOutLine, LPCWSTR pszLine, const WORD * pclsLine,
                      BYTE * plevelLine, int cchPara, const BOOL * pbrk)
{
    int cchLine = 0;
    int done = 0;
    int *run;

    run = FUNC1(FUNC0(), 0, cchPara * sizeof(int));
    if (!run)
    {
        FUNC4("Out of memory\n");
        return;
    }

    do
    {
        /* break lines at LS */
        cchLine = FUNC5(pszLine, pbrk, cchPara);

        /* resolve whitespace */
        FUNC6(baselevel, pclsLine, plevelLine, cchLine);

        if (pszOutLine)
        {
            int i;
            /* reorder each line in place */
            FUNC3(cchLine, plevelLine, NULL, run);
            for (i = 0; i < cchLine; i++)
                pszOutLine[done+run[i]] = pszLine[i];
        }

        pszLine += cchLine;
        plevelLine += cchLine;
        pbrk += pbrk ? cchLine : 0;
        pclsLine += cchLine;
        cchPara -= cchLine;
        done += cchLine;

    } while (cchPara);

    FUNC2(FUNC0(), 0, run);
}