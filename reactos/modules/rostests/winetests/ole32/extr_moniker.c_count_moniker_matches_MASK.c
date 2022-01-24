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
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IEnumMoniker ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  wszFileName1 ; 
 int /*<<< orphan*/  wszFileName2 ; 

__attribute__((used)) static int FUNC6(IBindCtx * pbc, IEnumMoniker * spEM)
{
    IMoniker * spMoniker;
    int monCnt=0, matchCnt=0;

    while ((FUNC1(spEM, 1, &spMoniker, NULL)==S_OK))
    {
        HRESULT hr;
        WCHAR * szDisplayn;
        monCnt++;
        hr=FUNC2(spMoniker, pbc, NULL, &szDisplayn);
        if (FUNC3(hr))
        {
            if (!FUNC4(szDisplayn, wszFileName1) || !FUNC4(szDisplayn, wszFileName2))
                matchCnt++;
            FUNC0(szDisplayn);
        }
    }
    FUNC5("Total number of monikers is %i\n", monCnt);
    return matchCnt;
}