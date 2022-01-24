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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int STGM_CREATE ; 
 int STGM_DIRECT ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC8(LPCSTR name)
{
    WCHAR nameW[MAX_PATH];
    IStorage *stg;
    IStream *stm;
    HRESULT hr;
    DWORD count;
    BOOL res = FALSE;

    FUNC5(CP_ACP, 0, name, -1, nameW, MAX_PATH);
    hr = FUNC7(nameW, STGM_CREATE | STGM_READWRITE |
                          STGM_DIRECT | STGM_SHARE_EXCLUSIVE, 0, &stg);
    if (FUNC0(hr))
        return FALSE;

    hr = FUNC1(stg, nameW, STGM_WRITE | STGM_SHARE_EXCLUSIVE,
                               0, 0, &stm);
    if (FUNC0(hr))
        goto done;

    hr = FUNC4(stm, "stgdata", 8, &count);
    if (FUNC6(hr))
        res = TRUE;

done:
    FUNC3(stm);
    FUNC2(stg);

    return res;
}