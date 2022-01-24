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
typedef  int /*<<< orphan*/  docInfo ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {char* pDocName; } ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DOC_INFO_1W ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ INVALID_FILE_SIZE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 scalar_t__ FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 

int FUNC16(int argc, WCHAR* argv[])
{
    int ReturnValue = 1;
    DWORD dwFileSize;
    DWORD dwRead, dwWritten;
    HANDLE hFile = INVALID_HANDLE_VALUE;
    HANDLE hPrinter = NULL;
    DOC_INFO_1W docInfo;
    BYTE Buffer[4096];

    if (argc <= 1)
    {
        FUNC11(argv[0]);
        return 0;
    }

    hFile = FUNC2(argv[1], GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC15("CreateFileW failed, last error is %lu!\n", FUNC6());
        goto Cleanup;
    }

    dwFileSize = FUNC5(hFile, NULL);
    if (dwFileSize == INVALID_FILE_SIZE)
    {
        FUNC15("File is too big, or GetFileSize failed; last error is %lu!\n", FUNC6());
        goto Cleanup;
    }

    if (!FUNC7(L"Dummy Printer On LPT1", &hPrinter, NULL))
    {
        FUNC15("OpenPrinterW failed, last error is %lu!\n", FUNC6());
        goto Cleanup;
    }

    /* Print to a printer, with the "RAW" datatype (pDatatype == NULL or "RAW") */
    FUNC13(&docInfo, sizeof(docInfo));
    docInfo.pDocName = L"winspool_print";

    if (!FUNC9(hPrinter, 1, (LPBYTE)&docInfo))
    {
        FUNC15("StartDocPrinterW failed, last error is %lu!\n", FUNC6());
        goto Cleanup;
    }

    if (!FUNC10(hPrinter))
    {
        FUNC15("StartPagePrinter failed, last error is %lu!\n", FUNC6());
        goto Cleanup;
    }

    while (dwFileSize > 0)
    {
        dwRead = FUNC14(sizeof(Buffer), dwFileSize);
        if (!FUNC8(hFile, Buffer, dwRead, &dwRead, NULL))
        {
            FUNC15("ReadFile failed, last error is %lu!\n", FUNC6());
            goto Cleanup;
        }
        dwFileSize -= dwRead;

        if (!FUNC12(hPrinter, Buffer, dwRead, &dwWritten))
        {
            FUNC15("WritePrinter failed, last error is %lu!\n", FUNC6());
            goto Cleanup;
        }
    }

    if (!FUNC4(hPrinter))
    {
        FUNC15("EndPagePrinter failed, last error is %lu!\n", FUNC6());
        goto Cleanup;
    }

    if (!FUNC3(hPrinter))
    {
        FUNC15("EndDocPrinter failed, last error is %lu!\n", FUNC6());
        goto Cleanup;
    }

    ReturnValue = 0;

Cleanup:
    if (hPrinter)
        FUNC1(hPrinter);

    if (hFile != INVALID_HANDLE_VALUE)
        FUNC0(hFile);

    return ReturnValue;
}