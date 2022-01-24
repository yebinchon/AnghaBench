#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_6__ {int LowPart; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wszFileName1 ; 

__attribute__((used)) static void FUNC11(void)
{
    IMoniker* pMk;
    IStream* pStm;
    HRESULT hr;
    ULARGE_INTEGER size;
    LARGE_INTEGER zero_pos, dead_pos, nulls_pos;
    DWORD some_val = 0xFEDCBA98;
    int i;

    /* see FileMonikerImpl_Save docs */
    zero_pos.QuadPart = 0;
    dead_pos.QuadPart = sizeof(WORD) + sizeof(DWORD) + (FUNC9(wszFileName1) + 1) + sizeof(WORD);
    nulls_pos.QuadPart = dead_pos.QuadPart + sizeof(WORD);

    /* create the stream we're going to write to */
    hr = FUNC1(NULL, TRUE, &pStm);
    FUNC10(hr, "CreateStreamOnHGlobal");

    size.u.LowPart = 128;
    hr = FUNC7(pStm, size);
    FUNC10(hr, "IStream_SetSize");

    /* create and save a moniker */
    hr = FUNC0(wszFileName1, &pMk);
    FUNC10(hr, "CreateFileMoniker");

    hr = FUNC4(pMk, pStm, TRUE);
    FUNC10(hr, "IMoniker_Save");
    FUNC3(pMk);

    /* overwrite the constants with various values */
    hr = FUNC6(pStm, zero_pos, STREAM_SEEK_SET, NULL);
    FUNC10(hr, "IStream_Seek");
    hr = FUNC8(pStm, &some_val, sizeof(WORD), NULL);
    FUNC10(hr, "IStream_Write");

    hr = FUNC6(pStm, dead_pos, STREAM_SEEK_SET, NULL);
    FUNC10(hr, "IStream_Seek");
    hr = FUNC8(pStm, &some_val, sizeof(WORD), NULL);
    FUNC10(hr, "IStream_Write");

    hr = FUNC6(pStm, nulls_pos, STREAM_SEEK_SET, NULL);
    FUNC10(hr, "IStream_Seek");
    for(i = 0; i < 5; ++i){
        hr = FUNC8(pStm, &some_val, sizeof(DWORD), NULL);
        FUNC10(hr, "IStream_Write");
    }

    /* go back to the start of the stream */
    hr = FUNC6(pStm, zero_pos, STREAM_SEEK_SET, NULL);
    FUNC10(hr, "IStream_Seek");

    /* create a new moniker and load into it */
    hr = FUNC0(wszFileName1, &pMk);
    FUNC10(hr, "CreateFileMoniker");

    hr = FUNC2(pMk, pStm);
    FUNC10(hr, "IMoniker_Load");

    FUNC3(pMk);
    FUNC5(pStm);
}