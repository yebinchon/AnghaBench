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
typedef  int /*<<< orphan*/  ITfThreadMgr ;
typedef  int /*<<< orphan*/  ITfDocumentMgr ;
typedef  int /*<<< orphan*/  IEnumTfDocumentMgrs ;
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

__attribute__((used)) static void FUNC6(ITfThreadMgr *tm, ITfDocumentMgr *search, ITfDocumentMgr *absent)
{
    HRESULT hr;
    IEnumTfDocumentMgrs* pEnum;
    BOOL found = FALSE;
    BOOL notfound = TRUE;

    hr = FUNC3(tm,&pEnum);
    FUNC5(FUNC4(hr),"EnumDocumentMgrs failed\n");
    if (FUNC4(hr))
    {
        ULONG fetched;
        ITfDocumentMgr *dm;
        while (FUNC0(pEnum, 1, &dm, &fetched) == S_OK)
        {
            if (!search)
                found = TRUE;
            else if (search == dm)
                found = TRUE;
            if (absent && dm == absent)
                notfound = FALSE;
            FUNC2(dm);
        }
        FUNC1(pEnum);
    }
    if (search)
        FUNC5(found,"Did not find proper ITfDocumentMgr\n");
    else
        FUNC5(!found,"Found an ITfDocumentMgr we should should not have\n");
    if (absent)
        FUNC5(notfound,"Found an ITfDocumentMgr we believe should be absent\n");
}