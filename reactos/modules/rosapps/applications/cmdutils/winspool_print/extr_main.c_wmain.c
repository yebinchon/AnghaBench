
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int docInfo ;
typedef int WCHAR ;
struct TYPE_3__ {char* pDocName; } ;
typedef int LPBYTE ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DOC_INFO_1W ;
typedef int Buffer ;
typedef int BYTE ;


 int CloseHandle (scalar_t__) ;
 int ClosePrinter (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int EndDocPrinter (scalar_t__) ;
 int EndPagePrinter (scalar_t__) ;
 int GENERIC_READ ;
 scalar_t__ GetFileSize (scalar_t__,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_FILE_SIZE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int OpenPrinterW (char*,scalar_t__*,int *) ;
 int ReadFile (scalar_t__,int *,scalar_t__,scalar_t__*,int *) ;
 int StartDocPrinterW (scalar_t__,int,int ) ;
 int StartPagePrinter (scalar_t__) ;
 int Usage (int *) ;
 int WritePrinter (scalar_t__,int *,scalar_t__,scalar_t__*) ;
 int ZeroMemory (TYPE_1__*,int) ;
 scalar_t__ min (int,scalar_t__) ;
 int printf (char*,int ) ;

int wmain(int argc, WCHAR* argv[])
{
    int ReturnValue = 1;
    DWORD dwFileSize;
    DWORD dwRead, dwWritten;
    HANDLE hFile = INVALID_HANDLE_VALUE;
    HANDLE hPrinter = ((void*)0);
    DOC_INFO_1W docInfo;
    BYTE Buffer[4096];

    if (argc <= 1)
    {
        Usage(argv[0]);
        return 0;
    }

    hFile = CreateFileW(argv[1], GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        printf("CreateFileW failed, last error is %lu!\n", GetLastError());
        goto Cleanup;
    }

    dwFileSize = GetFileSize(hFile, ((void*)0));
    if (dwFileSize == INVALID_FILE_SIZE)
    {
        printf("File is too big, or GetFileSize failed; last error is %lu!\n", GetLastError());
        goto Cleanup;
    }

    if (!OpenPrinterW(L"Dummy Printer On LPT1", &hPrinter, ((void*)0)))
    {
        printf("OpenPrinterW failed, last error is %lu!\n", GetLastError());
        goto Cleanup;
    }


    ZeroMemory(&docInfo, sizeof(docInfo));
    docInfo.pDocName = L"winspool_print";

    if (!StartDocPrinterW(hPrinter, 1, (LPBYTE)&docInfo))
    {
        printf("StartDocPrinterW failed, last error is %lu!\n", GetLastError());
        goto Cleanup;
    }

    if (!StartPagePrinter(hPrinter))
    {
        printf("StartPagePrinter failed, last error is %lu!\n", GetLastError());
        goto Cleanup;
    }

    while (dwFileSize > 0)
    {
        dwRead = min(sizeof(Buffer), dwFileSize);
        if (!ReadFile(hFile, Buffer, dwRead, &dwRead, ((void*)0)))
        {
            printf("ReadFile failed, last error is %lu!\n", GetLastError());
            goto Cleanup;
        }
        dwFileSize -= dwRead;

        if (!WritePrinter(hPrinter, Buffer, dwRead, &dwWritten))
        {
            printf("WritePrinter failed, last error is %lu!\n", GetLastError());
            goto Cleanup;
        }
    }

    if (!EndPagePrinter(hPrinter))
    {
        printf("EndPagePrinter failed, last error is %lu!\n", GetLastError());
        goto Cleanup;
    }

    if (!EndDocPrinter(hPrinter))
    {
        printf("EndDocPrinter failed, last error is %lu!\n", GetLastError());
        goto Cleanup;
    }

    ReturnValue = 0;

Cleanup:
    if (hPrinter)
        ClosePrinter(hPrinter);

    if (hFile != INVALID_HANDLE_VALUE)
        CloseHandle(hFile);

    return ReturnValue;
}
