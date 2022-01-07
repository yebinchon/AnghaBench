
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef int VOID ;
struct TYPE_15__ {int bmHeight; int bmWidth; } ;
struct TYPE_14__ {scalar_t__ bfType; int bfOffBits; int bfSize; } ;
struct TYPE_13__ {int Height; int Width; int * hBitmap; TYPE_4__* pBits; TYPE_4__* pbmi; TYPE_2__* OpenInfo; } ;
struct TYPE_11__ {int lpImagePath; } ;
struct TYPE_12__ {TYPE_1__ Open; } ;
typedef TYPE_3__* PEDIT_WND_INFO ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;
typedef TYPE_4__ BITMAPFILEHEADER ;
typedef TYPE_5__ BITMAP ;


 int CloseHandle (scalar_t__) ;
 int * CreateDIBSection (int *,TYPE_4__*,int ,int *,int *,int ) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int DIB_RGB_COLORS ;
 scalar_t__ FALSE ;
 int FILE_FLAG_SEQUENTIAL_SCAN ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetError (int ) ;
 int GetObject (int *,int,TYPE_5__*) ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int ProcessHeap ;
 scalar_t__ ReadFile (scalar_t__,TYPE_4__*,int,int*,int *) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL
LoadDIBImage(PEDIT_WND_INFO Info)
{
    BITMAPFILEHEADER bmfh;
    HANDLE hFile;
    BITMAP bitmap;
    DWORD BytesRead;
    BOOL bSuccess, bRet = FALSE;

    hFile = CreateFile(Info->OpenInfo->Open.lpImagePath,
                       GENERIC_READ,
                       FILE_SHARE_READ,
                       ((void*)0),
                       OPEN_EXISTING,
                       FILE_FLAG_SEQUENTIAL_SCAN,
                       ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
        return bRet;

    bSuccess = ReadFile(hFile,
                        &bmfh,
                        sizeof(BITMAPFILEHEADER),
                        &BytesRead,
                        ((void*)0));

    if (bSuccess && (BytesRead == sizeof(BITMAPFILEHEADER))
                 && (bmfh.bfType == *(WORD *)"BM"))
    {
        DWORD InfoSize = bmfh.bfOffBits - sizeof(BITMAPFILEHEADER);

        Info->pbmi = HeapAlloc(ProcessHeap,
                               0,
                               InfoSize);
        if (Info->pbmi)
        {
            bSuccess = ReadFile(hFile,
                                Info->pbmi,
                                InfoSize,
                                &BytesRead,
                                ((void*)0));

            if (bSuccess && (BytesRead == InfoSize))
            {
                Info->hBitmap = CreateDIBSection(((void*)0),
                                                 Info->pbmi,
                                                 DIB_RGB_COLORS,
                                                 (VOID *)&Info->pBits,
                                                 ((void*)0),
                                                 0);
                if (Info->hBitmap != ((void*)0))
                {
                    ReadFile(hFile,
                             Info->pBits,
                             bmfh.bfSize - bmfh.bfOffBits,
                             &BytesRead,
                             ((void*)0));

                    GetObject(Info->hBitmap,
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
        GetError(0);
    }

    CloseHandle(hFile);

    return bRet;
}
