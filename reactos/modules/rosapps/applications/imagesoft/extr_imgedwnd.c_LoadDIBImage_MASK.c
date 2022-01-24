#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_15__ {int /*<<< orphan*/  bmHeight; int /*<<< orphan*/  bmWidth; } ;
struct TYPE_14__ {scalar_t__ bfType; int bfOffBits; int bfSize; } ;
struct TYPE_13__ {int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; int /*<<< orphan*/ * hBitmap; TYPE_4__* pBits; TYPE_4__* pbmi; TYPE_2__* OpenInfo; } ;
struct TYPE_11__ {int /*<<< orphan*/  lpImagePath; } ;
struct TYPE_12__ {TYPE_1__ Open; } ;
typedef  TYPE_3__* PEDIT_WND_INFO ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;
typedef  TYPE_4__ BITMAPFILEHEADER ;
typedef  TYPE_5__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_FLAG_SEQUENTIAL_SCAN ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  ProcessHeap ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_4__*,int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static BOOL
FUNC7(PEDIT_WND_INFO Info)
{
    BITMAPFILEHEADER bmfh;
    HANDLE hFile;
    BITMAP bitmap;
    DWORD BytesRead;
    BOOL bSuccess, bRet = FALSE;

    hFile = FUNC2(Info->OpenInfo->Open.lpImagePath,
                       GENERIC_READ,
                       FILE_SHARE_READ,
                       NULL,
                       OPEN_EXISTING,
                       FILE_FLAG_SEQUENTIAL_SCAN,
                       NULL);
    if (hFile == INVALID_HANDLE_VALUE)
        return bRet;

    bSuccess = FUNC6(hFile,
                        &bmfh,
                        sizeof(BITMAPFILEHEADER),
                        &BytesRead,
                        NULL);

    if (bSuccess && (BytesRead == sizeof(BITMAPFILEHEADER))
                 && (bmfh.bfType == *(WORD *)"BM"))
    {
        DWORD InfoSize = bmfh.bfOffBits - sizeof(BITMAPFILEHEADER);

        Info->pbmi = FUNC5(ProcessHeap,
                               0,
                               InfoSize);
        if (Info->pbmi)
        {
            bSuccess = FUNC6(hFile,
                                Info->pbmi,
                                InfoSize,
                                &BytesRead,
                                NULL);

            if (bSuccess && (BytesRead == InfoSize))
            {
                Info->hBitmap = FUNC1(NULL,
                                                 Info->pbmi,
                                                 DIB_RGB_COLORS,
                                                 (VOID *)&Info->pBits,
                                                 NULL,
                                                 0);
                if (Info->hBitmap != NULL)
                {
                    FUNC6(hFile,
                             Info->pBits,
                             bmfh.bfSize - bmfh.bfOffBits,
                             &BytesRead,
                             NULL);

                    FUNC4(Info->hBitmap,
                              sizeof(BITMAP),
                              &bitmap);

                    Info->Width = bitmap.bmWidth;
                    Info->Height = bitmap.bmHeight;

                    bRet = TRUE;
                }
            }
        }
    }
    else if (!bSuccess)
    {
        FUNC3(0);
    }

    FUNC0(hFile);

    return bRet;
}