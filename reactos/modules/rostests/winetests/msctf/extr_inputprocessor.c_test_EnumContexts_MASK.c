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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  ITfDocumentMgr ;
typedef  int /*<<< orphan*/  ITfContext ;
typedef  int /*<<< orphan*/  IEnumTfContexts ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static void FUNC6(ITfDocumentMgr *dm, ITfContext *search)
{
    HRESULT hr;
    IEnumTfContexts* pEnum;
    BOOL found = FALSE;

    hr = FUNC3(dm,&pEnum);
    FUNC5(FUNC4(hr),"EnumContexts failed\n");
    if (FUNC4(hr))
    {
        ULONG fetched;
        ITfContext *cxt;
        while (FUNC0(pEnum, 1, &cxt, &fetched) == S_OK)
        {
            if (!search)
                found = TRUE;
            else if (search == cxt)
                found = TRUE;
            FUNC2(cxt);
        }
        FUNC1(pEnum);
    }
    if (search)
        FUNC5(found,"Did not find proper ITfContext\n");
    else
        FUNC5(!found,"Found an ITfContext we should should not have\n");
}