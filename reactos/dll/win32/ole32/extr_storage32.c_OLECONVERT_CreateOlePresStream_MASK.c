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
typedef  int /*<<< orphan*/  pOlePresStreamHeaderEmpty ;
typedef  int /*<<< orphan*/  pOlePresStreamHeader ;
typedef  int WCHAR ;
struct TYPE_3__ {int* byUnknown1; int dwExtentX; int dwExtentY; int dwSize; int* pData; } ;
typedef  int /*<<< orphan*/  OlePres ;
typedef  TYPE_1__ OLECONVERT_ISTORAGE_OLEPRES ;
typedef  int /*<<< orphan*/  METAFILEPICT16 ;
typedef  int /*<<< orphan*/  LPSTORAGE ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *) ; 
 int STGM_CREATE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(LPSTORAGE pStorage, DWORD dwExtentX, DWORD dwExtentY , BYTE *pData, DWORD dwDataLength)
{
    HRESULT hRes;
    IStream *pStream;
    static const WCHAR wstrStreamName[] = {2, 'O', 'l', 'e', 'P', 'r', 'e', 's', '0', '0', '0', 0};
    static const BYTE pOlePresStreamHeader[] =
    {
        0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x00, 0x00, 0x00,
        0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
        0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00
    };

    static const BYTE pOlePresStreamHeaderEmpty[] =
    {
        0x00, 0x00, 0x00, 0x00,
        0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
        0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00
    };

    /* Create the OlePres000 Stream */
    hRes = FUNC0(pStorage, wstrStreamName,
        STGM_CREATE | STGM_WRITE  | STGM_SHARE_EXCLUSIVE, 0, 0, &pStream );

    if(hRes == S_OK)
    {
        DWORD nHeaderSize;
        OLECONVERT_ISTORAGE_OLEPRES OlePres;

        FUNC4(&OlePres, 0, sizeof(OlePres));
        /* Do we have any metafile data to save */
        if(dwDataLength > 0)
        {
            FUNC3(OlePres.byUnknown1, pOlePresStreamHeader, sizeof(pOlePresStreamHeader));
            nHeaderSize = sizeof(pOlePresStreamHeader);
        }
        else
        {
            FUNC3(OlePres.byUnknown1, pOlePresStreamHeaderEmpty, sizeof(pOlePresStreamHeaderEmpty));
            nHeaderSize = sizeof(pOlePresStreamHeaderEmpty);
        }
        /* Set width and height of the metafile */
        OlePres.dwExtentX = dwExtentX;
        OlePres.dwExtentY = -dwExtentY;

        /* Set Data and Length */
        if(dwDataLength > sizeof(METAFILEPICT16))
        {
            OlePres.dwSize = dwDataLength - sizeof(METAFILEPICT16);
            OlePres.pData = &(pData[8]);
        }
        /* Save OlePres000 Data to Stream */
        hRes = FUNC2(pStream, OlePres.byUnknown1, nHeaderSize, NULL);
        hRes = FUNC2(pStream, &(OlePres.dwExtentX), sizeof(OlePres.dwExtentX), NULL);
        hRes = FUNC2(pStream, &(OlePres.dwExtentY), sizeof(OlePres.dwExtentY), NULL);
        hRes = FUNC2(pStream, &(OlePres.dwSize), sizeof(OlePres.dwSize), NULL);
        if(OlePres.dwSize > 0)
        {
            hRes = FUNC2(pStream, OlePres.pData, OlePres.dwSize, NULL);
        }
        FUNC1(pStream);
    }
}