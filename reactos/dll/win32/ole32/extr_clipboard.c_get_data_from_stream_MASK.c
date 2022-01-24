#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  med ;
typedef  int /*<<< orphan*/  ULARGE_INTEGER ;
struct TYPE_16__ {int /*<<< orphan*/  tymed; } ;
struct TYPE_15__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {int /*<<< orphan*/ * pstm; } ;
struct TYPE_14__ {TYPE_1__ u; int /*<<< orphan*/ * pUnkForRelease; int /*<<< orphan*/  tymed; } ;
typedef  TYPE_2__ STGMEDIUM ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  TYPE_4__ FORMATETC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  STREAM_SEEK_CUR ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TYMED_ISTREAM ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC11(IDataObject *data, FORMATETC *fmt, HGLOBAL *mem)
{
    HGLOBAL h;
    IStream *stm = NULL;
    HRESULT hr;
    FORMATETC stm_fmt;
    STGMEDIUM med;

    *mem = NULL;

    h = FUNC2( GMEM_DDESHARE|GMEM_MOVEABLE, 0 );
    if(!h) return E_OUTOFMEMORY;

    hr = FUNC0(h, FALSE, &stm);
    if(FUNC1(hr)) goto error;

    stm_fmt = *fmt;
    med.tymed = stm_fmt.tymed = TYMED_ISTREAM;
    med.u.pstm = stm;
    med.pUnkForRelease = NULL;

    hr = FUNC5(data, &stm_fmt, &med);
    if(FUNC1(hr))
    {
        LARGE_INTEGER offs;
        ULARGE_INTEGER pos;

        FUNC10(&med, 0, sizeof(med));
        hr = FUNC4(data, &stm_fmt, &med);
        if(FUNC1(hr)) goto error;

        offs.QuadPart = 0;
        FUNC8(med.u.pstm, offs, STREAM_SEEK_CUR, &pos);
        FUNC8(med.u.pstm, offs, STREAM_SEEK_SET, NULL);
        hr = FUNC6(med.u.pstm, stm, pos, NULL, NULL);
        FUNC9(&med);
        if(FUNC1(hr)) goto error;
    }
    *mem = h;
    FUNC7(stm);
    return S_OK;

error:
    if(stm) FUNC7(stm);
    FUNC3(h);
    return hr;
}