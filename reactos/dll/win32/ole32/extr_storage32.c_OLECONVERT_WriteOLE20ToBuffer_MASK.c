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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPSTORAGE ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int STGM_CREATE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC11 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static DWORD FUNC12(LPSTORAGE pStorage, BYTE **pData)
{
    HANDLE hFile;
    HRESULT hRes;
    DWORD nDataLength = 0;
    IStorage *pTempStorage;
    WCHAR wstrTempDir[MAX_PATH], wstrTempFile[MAX_PATH];
    static const WCHAR wstrPrefix[] = {'s', 'i', 's', 0};

    *pData = NULL;

    /* Create temp Storage */
    FUNC6(MAX_PATH, wstrTempDir);
    FUNC5(wstrTempDir, wstrPrefix, 0, wstrTempFile);
    hRes = FUNC11(wstrTempFile, STGM_CREATE | STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &pTempStorage);

    if(hRes == S_OK)
    {
        /* Copy Src Storage to the Temp Storage */
        FUNC8(pStorage, 0, NULL, NULL, pTempStorage);
        FUNC9(pTempStorage);

        /* Open Temp Storage as a file and copy to memory */
        hFile = FUNC1(wstrTempFile, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
        if(hFile != INVALID_HANDLE_VALUE)
        {
            nDataLength = FUNC3(hFile, NULL);
            *pData = FUNC7(FUNC4(),0,nDataLength);
            FUNC10(hFile, *pData, nDataLength, &nDataLength, 0);
            FUNC0(hFile);
        }
        FUNC2(wstrTempFile);
    }
    return nDataLength;
}