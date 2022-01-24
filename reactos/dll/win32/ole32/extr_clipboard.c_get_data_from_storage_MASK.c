#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  med ;
struct TYPE_13__ {int /*<<< orphan*/  tymed; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pstg; } ;
struct TYPE_12__ {TYPE_1__ u; int /*<<< orphan*/ * pUnkForRelease; int /*<<< orphan*/  tymed; } ;
typedef  TYPE_2__ STGMEDIUM ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  ILockBytes ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  TYPE_3__ FORMATETC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TYMED_ISTORAGE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC13(IDataObject *data, FORMATETC *fmt, HGLOBAL *mem)
{
    HGLOBAL h;
    IStorage *stg;
    HRESULT hr;
    FORMATETC stg_fmt;
    STGMEDIUM med;
    ILockBytes *lbs;

    *mem = NULL;

    h = FUNC2( GMEM_DDESHARE|GMEM_MOVEABLE, 0 );
    if(!h) return E_OUTOFMEMORY;

    hr = FUNC0(h, FALSE, &lbs);
    if(FUNC10(hr))
    {
        hr = FUNC11(lbs, STGM_CREATE|STGM_SHARE_EXCLUSIVE|STGM_READWRITE, 0, &stg);
        FUNC6(lbs);
    }
    if(FUNC1(hr))
    {
        FUNC3(h);
        return hr;
    }

    stg_fmt = *fmt;
    med.tymed = stg_fmt.tymed = TYMED_ISTORAGE;
    med.u.pstg = stg;
    med.pUnkForRelease = NULL;

    hr = FUNC5(data, &stg_fmt, &med);
    if(FUNC1(hr))
    {
        FUNC12(&med, 0, sizeof(med));
        hr = FUNC4(data, &stg_fmt, &med);
        if(FUNC1(hr)) goto end;

        hr = FUNC7(med.u.pstg, 0, NULL, NULL, stg);
        FUNC9(&med);
        if(FUNC1(hr)) goto end;
    }
    *mem = h;

end:
    FUNC8(stg);
    if(FUNC1(hr)) FUNC3(h);
    return hr;
}