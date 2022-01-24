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
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__ HMMIO ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MCIERR_FILE_NOT_FOUND ; 
 int MMIO_ALLOCBUF ; 
 int MMIO_CREATE ; 
 int MMIO_READWRITE ; 
 int /*<<< orphan*/  MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static DWORD FUNC10(HMMIO* hFile, LPWSTR* pszTmpFileName)
{
    WCHAR       szTmpPath[MAX_PATH];
    WCHAR       szPrefix[4];
    DWORD       dwRet = MMSYSERR_NOERROR;

    szPrefix[0] = 'M';
    szPrefix[1] = 'C';
    szPrefix[2] = 'I';
    szPrefix[3] = '\0';

    if (!FUNC3(FUNC0(szTmpPath), szTmpPath)) {
        FUNC7("can't retrieve temp path!\n");
        *pszTmpFileName = NULL;
        return MCIERR_FILE_NOT_FOUND;
    }

    *pszTmpFileName = FUNC4(FUNC1(),
                                HEAP_ZERO_MEMORY,
                                MAX_PATH * sizeof(WCHAR));
    if (!FUNC2(szTmpPath, szPrefix, 0, *pszTmpFileName)) {
        FUNC7("can't retrieve temp file name!\n");
        FUNC5(FUNC1(), 0, *pszTmpFileName);
        return MCIERR_FILE_NOT_FOUND;
    }

    FUNC6("%s!\n", FUNC8(*pszTmpFileName));

    if (*pszTmpFileName && (*pszTmpFileName)[0]) {

        *hFile = FUNC9(*pszTmpFileName, NULL,
                           MMIO_ALLOCBUF | MMIO_READWRITE | MMIO_CREATE);

        if (*hFile == 0) {
            FUNC7("can't create file=%s!\n", FUNC8(*pszTmpFileName));
            /* temporary file could not be created. clean filename. */
            FUNC5(FUNC1(), 0, *pszTmpFileName);
            dwRet = MCIERR_FILE_NOT_FOUND;
        }
    }
    return dwRet;
}