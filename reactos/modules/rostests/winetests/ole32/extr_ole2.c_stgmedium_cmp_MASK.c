#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_9__ {int /*<<< orphan*/  hMetaFilePict; int /*<<< orphan*/  hGlobal; } ;
struct TYPE_8__ {int /*<<< orphan*/  hMF; } ;
struct TYPE_7__ {scalar_t__ tymed; int /*<<< orphan*/  hGlobal; int /*<<< orphan*/  hEnhMetaFile; } ;
typedef  TYPE_1__ const STGMEDIUM ;
typedef  TYPE_2__ METAFILEPICT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TYMED_ENHMF ; 
 scalar_t__ TYMED_HGLOBAL ; 
 scalar_t__ TYMED_MFPICT ; 
 TYPE_5__* FUNC8 (TYPE_1__ const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC10(const STGMEDIUM *med1, STGMEDIUM *med2)
{
    BYTE *data1, *data2;
    ULONG datasize1, datasize2;

    if (med1->tymed != med2->tymed)
        return E_FAIL;

    if (med1->tymed == TYMED_MFPICT)
    {
        METAFILEPICT *mfpict1 = FUNC3(FUNC8(med1)->hMetaFilePict);
        METAFILEPICT *mfpict2 = FUNC3(FUNC8(med2)->hMetaFilePict);

        datasize1 = FUNC1(mfpict1->hMF, 0, NULL);
        datasize2 = FUNC1(mfpict2->hMF, 0, NULL);
        if (datasize1 == datasize2)
        {
            data1 = FUNC6(FUNC2(), 0, datasize1);
            data2 = FUNC6(FUNC2(), 0, datasize2);
            FUNC1(mfpict1->hMF, datasize1, data1);
            FUNC1(mfpict2->hMF, datasize2, data2);
        }
        else return E_FAIL;
    }
    else if (med1->tymed == TYMED_ENHMF)
    {
        datasize1 = FUNC0(med1->hEnhMetaFile, 0, NULL);
        datasize2 = FUNC0(med2->hEnhMetaFile, 0, NULL);
        if (datasize1 == datasize2)
        {
            data1 = FUNC6(FUNC2(), 0, datasize1);
            data2 = FUNC6(FUNC2(), 0, datasize2);
            FUNC0(med1->hEnhMetaFile, datasize1, data1);
            FUNC0(med2->hEnhMetaFile, datasize2, data2);
        }
        else return E_FAIL;
    }
    else if (med1->tymed == TYMED_HGLOBAL)
    {
        datasize1 = FUNC4(med1->hGlobal);
        datasize2 = FUNC4(med2->hGlobal);

        if (datasize1 == datasize2)
        {
            data1 = FUNC3(med1->hGlobal);
            data2 = FUNC3(med2->hGlobal);
        }
        else
            return E_FAIL;
    }
    else
        return E_NOTIMPL;

    if (FUNC9(data1, data2, datasize1) != 0)
        return E_FAIL;

    if (med1->tymed == TYMED_HGLOBAL)
    {
        FUNC5(FUNC8(med1)->hGlobal);
        FUNC5(FUNC8(med2)->hGlobal);
    }
    else if (med1->tymed == TYMED_MFPICT)
    {
        FUNC7(FUNC2(), 0, data1);
        FUNC7(FUNC2(), 0, data2);
        FUNC5(FUNC8(med1)->hMetaFilePict);
        FUNC5(FUNC8(med2)->hMetaFilePict);
    }
    else
    {
        FUNC7(FUNC2(), 0, data1);
        FUNC7(FUNC2(), 0, data2);
    }

    return S_OK;
}