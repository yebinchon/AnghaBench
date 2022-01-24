#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pOutputFile; int /*<<< orphan*/  pDocName; int /*<<< orphan*/  pDatatype; } ;
struct TYPE_4__ {int /*<<< orphan*/  pwszOutputFile; int /*<<< orphan*/  pwszDocumentName; int /*<<< orphan*/  pwszDatatype; int /*<<< orphan*/  pwszPrinterPort; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_1__* PWINPRINT_HANDLE ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;
typedef  TYPE_2__ DOC_INFO_1W ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 int ERROR_NOT_ENOUGH_MEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 

DWORD
FUNC10(PWINPRINT_HANDLE pHandle, PWSTR pwszPrinterAndJob)
{
    // Use a read buffer of 256 KB size like Windows does.
    const DWORD cbReadBuffer = 262144;

    BOOL bStartedDoc = FALSE;
    DOC_INFO_1W DocInfo1;
    DWORD cbRead;
    DWORD cbWritten;
    DWORD dwErrorCode;
    HANDLE hPrintJob;
    HANDLE hPrintMonitor = NULL;
    PBYTE pBuffer = NULL;

    // Open the spooled job to read from it.
    if (!FUNC6(pwszPrinterAndJob, &hPrintJob, NULL))
    {
        dwErrorCode = FUNC5();
        FUNC3("OpenPrinterW failed for \"%S\" with error %lu!\n", pwszPrinterAndJob, FUNC5());
        goto Cleanup;
    }

    // Open a Print Monitor handle to write to it.
    if (!FUNC6(pHandle->pwszPrinterPort, &hPrintMonitor, NULL))
    {
        dwErrorCode = FUNC5();
        FUNC3("OpenPrinterW failed for \"%S\" with error %lu!\n", pHandle->pwszPrinterPort, FUNC5());
        goto Cleanup;
    }

    // Fill the Document Information.
    DocInfo1.pDatatype = pHandle->pwszDatatype;
    DocInfo1.pDocName = pHandle->pwszDocumentName;
    DocInfo1.pOutputFile = pHandle->pwszOutputFile;

    // Tell the Print Monitor that we're starting a new document.
    if (!FUNC8(hPrintMonitor, 1, (PBYTE)&DocInfo1))
    {
        dwErrorCode = FUNC5();
        FUNC3("StartDocPrinterW failed with error %lu!\n", FUNC5());
        goto Cleanup;
    }

    bStartedDoc = TRUE;

    // Allocate a read buffer on the heap. This would easily exceed the stack size.
    pBuffer = FUNC1(cbReadBuffer);
    if (!pBuffer)
    {
        dwErrorCode = ERROR_NOT_ENOUGH_MEMORY;
        FUNC3("DllAllocSplMem failed with error %lu!\n", FUNC5());
        goto Cleanup;
    }

    // Loop as long as data is available.
    while (FUNC7(hPrintJob, pBuffer, cbReadBuffer, &cbRead) && cbRead)
    {
        // Write it to the Print Monitor.
        FUNC9(hPrintMonitor, pBuffer, cbRead, &cbWritten);
    }

    dwErrorCode = ERROR_SUCCESS;

Cleanup:
    if (pBuffer)
        FUNC2(pBuffer);
    
    if (bStartedDoc)
        FUNC4(hPrintMonitor);

    if (hPrintMonitor)
        FUNC0(hPrintMonitor);

    if (hPrintJob)
        FUNC0(hPrintJob);

    return dwErrorCode;
}