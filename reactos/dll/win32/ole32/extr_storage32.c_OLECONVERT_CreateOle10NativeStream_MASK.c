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
typedef  int /*<<< orphan*/  dwDataLength ;
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  LPSTORAGE ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int const DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int const*,int const,int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 scalar_t__ S_OK ; 

__attribute__((used)) static void FUNC3(LPSTORAGE pStorage, const BYTE *pData, DWORD dwDataLength)
{
    HRESULT hRes;
    IStream *pStream;
    static const WCHAR wstrStreamName[] = {1, 'O', 'l', 'e', '1', '0', 'N', 'a', 't', 'i', 'v', 'e', 0};

    /* Create the Ole10Native Stream */
    hRes = FUNC0(pStorage, wstrStreamName,
        STGM_CREATE | STGM_WRITE  | STGM_SHARE_EXCLUSIVE, 0, 0, &pStream );

    if(hRes == S_OK)
    {
        /* Write info to stream */
        hRes = FUNC2(pStream, &dwDataLength, sizeof(dwDataLength), NULL);
        hRes = FUNC2(pStream, pData, dwDataLength, NULL);
        FUNC1(pStream);
    }

}