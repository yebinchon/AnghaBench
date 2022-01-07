
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pOutputFile; int pDocName; int pDatatype; } ;
struct TYPE_4__ {int pwszOutputFile; int pwszDocumentName; int pwszDatatype; int pwszPrinterPort; } ;
typedef int PWSTR ;
typedef TYPE_1__* PWINPRINT_HANDLE ;
typedef int * PBYTE ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef TYPE_2__ DOC_INFO_1W ;
typedef scalar_t__ BOOL ;


 int ClosePrinter (int *) ;
 int * DllAllocSplMem (int const) ;
 int DllFreeSplMem (int *) ;
 int ERR (char*,int,...) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 int EndDocPrinter (int *) ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 int OpenPrinterW (int ,int **,int *) ;
 scalar_t__ ReadPrinter (int *,int *,int const,int*) ;
 int StartDocPrinterW (int *,int,int *) ;
 scalar_t__ TRUE ;
 int WritePrinter (int *,int *,int,int*) ;

DWORD
PrintRawJob(PWINPRINT_HANDLE pHandle, PWSTR pwszPrinterAndJob)
{

    const DWORD cbReadBuffer = 262144;

    BOOL bStartedDoc = FALSE;
    DOC_INFO_1W DocInfo1;
    DWORD cbRead;
    DWORD cbWritten;
    DWORD dwErrorCode;
    HANDLE hPrintJob;
    HANDLE hPrintMonitor = ((void*)0);
    PBYTE pBuffer = ((void*)0);


    if (!OpenPrinterW(pwszPrinterAndJob, &hPrintJob, ((void*)0)))
    {
        dwErrorCode = GetLastError();
        ERR("OpenPrinterW failed for \"%S\" with error %lu!\n", pwszPrinterAndJob, GetLastError());
        goto Cleanup;
    }


    if (!OpenPrinterW(pHandle->pwszPrinterPort, &hPrintMonitor, ((void*)0)))
    {
        dwErrorCode = GetLastError();
        ERR("OpenPrinterW failed for \"%S\" with error %lu!\n", pHandle->pwszPrinterPort, GetLastError());
        goto Cleanup;
    }


    DocInfo1.pDatatype = pHandle->pwszDatatype;
    DocInfo1.pDocName = pHandle->pwszDocumentName;
    DocInfo1.pOutputFile = pHandle->pwszOutputFile;


    if (!StartDocPrinterW(hPrintMonitor, 1, (PBYTE)&DocInfo1))
    {
        dwErrorCode = GetLastError();
        ERR("StartDocPrinterW failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }

    bStartedDoc = TRUE;


    pBuffer = DllAllocSplMem(cbReadBuffer);
    if (!pBuffer)
    {
        dwErrorCode = ERROR_NOT_ENOUGH_MEMORY;
        ERR("DllAllocSplMem failed with error %lu!\n", GetLastError());
        goto Cleanup;
    }


    while (ReadPrinter(hPrintJob, pBuffer, cbReadBuffer, &cbRead) && cbRead)
    {

        WritePrinter(hPrintMonitor, pBuffer, cbRead, &cbWritten);
    }

    dwErrorCode = ERROR_SUCCESS;

Cleanup:
    if (pBuffer)
        DllFreeSplMem(pBuffer);

    if (bStartedDoc)
        EndDocPrinter(hPrintMonitor);

    if (hPrintMonitor)
        ClosePrinter(hPrintMonitor);

    if (hPrintJob)
        ClosePrinter(hPrintJob);

    return dwErrorCode;
}
