
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bmfh ;
typedef int WORD ;
struct TYPE_8__ {int biSizeImage; void* bfSize; void* bfOffBits; scalar_t__ bfReserved2; scalar_t__ bfReserved1; int bfType; } ;
struct TYPE_7__ {TYPE_1__* lpbi; TYPE_3__* lpvBits; } ;
struct TYPE_6__ {TYPE_3__ bmiHeader; } ;
typedef TYPE_2__* PSCREENSHOT ;
typedef int LPTSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAPFILEHEADER ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int DeleteFile (int ) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_BEGIN ;
 int FILE_CURRENT ;
 int GENERIC_WRITE ;
 int GetError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 void* SetFilePointer (scalar_t__,int ,int ,int ) ;
 scalar_t__ TRUE ;
 scalar_t__ WriteFile (scalar_t__,TYPE_3__*,int,int*,int *) ;

__attribute__((used)) static BOOL
DoWriteFile(PSCREENSHOT pScrSht,
            LPTSTR pstrFileName)
{
    BITMAPFILEHEADER bmfh;
    BOOL bSuccess;
    DWORD dwBytesWritten;
    HANDLE hFile;


    hFile = CreateFile(pstrFileName,
                       GENERIC_WRITE,
                       0,
                       ((void*)0),
                       CREATE_ALWAYS,
                       FILE_ATTRIBUTE_NORMAL,
                       ((void*)0));

    if (hFile == INVALID_HANDLE_VALUE)
        return FALSE;


    bmfh.bfType = *(WORD *)"BM";
    bmfh.bfReserved1 = 0;
    bmfh.bfReserved2 = 0;
    bSuccess = WriteFile(hFile,
                         &bmfh,
                         sizeof(bmfh),
                         &dwBytesWritten,
                         ((void*)0));
    if ((!bSuccess) || (dwBytesWritten < sizeof(bmfh)))
        goto fail;


    bSuccess = WriteFile(hFile,
                         &pScrSht->lpbi->bmiHeader,
                         sizeof(BITMAPINFOHEADER),
                         &dwBytesWritten,
                         ((void*)0));
    if ((!bSuccess) || (dwBytesWritten < sizeof(BITMAPINFOHEADER)))
        goto fail;
    bmfh.bfOffBits = SetFilePointer(hFile, 0, 0, FILE_CURRENT);


    bSuccess = WriteFile(hFile,
                         pScrSht->lpvBits,
                         pScrSht->lpbi->bmiHeader.biSizeImage,
                         &dwBytesWritten,
                         ((void*)0));
    if ((!bSuccess) || (dwBytesWritten < pScrSht->lpbi->bmiHeader.biSizeImage))
        goto fail;


    bmfh.bfSize = SetFilePointer(hFile, 0, 0, FILE_CURRENT);


    SetFilePointer(hFile, 0, 0, FILE_BEGIN);
    bSuccess = WriteFile(hFile,
                         &bmfh,
                         sizeof(bmfh),
                         &dwBytesWritten,
                         ((void*)0));
    if ((!bSuccess) || (dwBytesWritten < sizeof(bmfh)))
        goto fail;

    return TRUE;

fail:
    GetError();
    if (hFile) CloseHandle(hFile);
    DeleteFile(pstrFileName);
    return FALSE;

}
