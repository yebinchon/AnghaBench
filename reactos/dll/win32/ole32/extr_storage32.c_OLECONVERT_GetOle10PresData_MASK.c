#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
struct TYPE_3__ {int dwTypeID; int* pData; int dwDataLength; scalar_t__ dwMetaFileHeight; scalar_t__ dwMetaFileWidth; void* dwOleID; } ;
typedef  TYPE_1__ OLECONVERT_OLESTREAM_DATA ;
typedef  int /*<<< orphan*/  LPSTORAGE ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* OLESTREAM_ID ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_OK ; 

__attribute__((used)) static void FUNC5(LPSTORAGE pStorage, OLECONVERT_OLESTREAM_DATA *pOleStreamData)
{

    HRESULT hRes;
    IStream *pStream;
    static const WCHAR wstrStreamName[] = {1, 'O', 'l', 'e', '1', '0', 'N', 'a', 't', 'i', 'v', 'e', 0};

    /* Initialize Default data for OLESTREAM */
    pOleStreamData[0].dwOleID = OLESTREAM_ID;
    pOleStreamData[0].dwTypeID = 2;
    pOleStreamData[1].dwOleID = OLESTREAM_ID;
    pOleStreamData[1].dwTypeID = 0;
    pOleStreamData[0].dwMetaFileWidth = 0;
    pOleStreamData[0].dwMetaFileHeight = 0;
    pOleStreamData[0].pData = NULL;
    pOleStreamData[1].pData = NULL;

    /* Open Ole10Native Stream */
    hRes = FUNC2(pStorage, wstrStreamName, NULL,
        STGM_READ  | STGM_SHARE_EXCLUSIVE, 0, &pStream );
    if(hRes == S_OK)
    {

        /* Read Size and Data */
        FUNC3(pStream, &(pOleStreamData->dwDataLength), sizeof(pOleStreamData->dwDataLength), NULL);
        if(pOleStreamData->dwDataLength > 0)
        {
            pOleStreamData->pData = FUNC1(FUNC0(),0,pOleStreamData->dwDataLength);
            FUNC3(pStream, pOleStreamData->pData, pOleStreamData->dwDataLength, NULL);
        }
        FUNC4(pStream);
    }

}