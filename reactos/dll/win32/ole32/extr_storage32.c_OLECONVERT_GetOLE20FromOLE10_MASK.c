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
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  STGM_READ ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(LPSTORAGE pDestStorage, const BYTE *pBuffer, DWORD nBufferLength)
{
    HRESULT hRes;
    HANDLE hFile;
    IStorage *pTempStorage;
    DWORD dwNumOfBytesWritten;
    WCHAR wstrTempDir[MAX_PATH], wstrTempFile[MAX_PATH];
    static const WCHAR wstrPrefix[] = {'s', 'i', 's', 0};

    /* Create a temp File */
    FUNC4(MAX_PATH, wstrTempDir);
    FUNC3(wstrTempDir, wstrPrefix, 0, wstrTempFile);
    hFile = FUNC1(wstrTempFile, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);

    if(hFile != INVALID_HANDLE_VALUE)
    {
        /* Write IStorage Data to File */
        FUNC8(hFile, pBuffer, nBufferLength, &dwNumOfBytesWritten, NULL);
        FUNC0(hFile);

        /* Open and copy temp storage to the Dest Storage */
        hRes = FUNC7(wstrTempFile, NULL, STGM_READ, NULL, 0, &pTempStorage);
        if(hRes == S_OK)
        {
            hRes = FUNC5(pTempStorage, 0, NULL, NULL, pDestStorage);
            FUNC6(pTempStorage);
        }
        FUNC2(wstrTempFile);
    }
}