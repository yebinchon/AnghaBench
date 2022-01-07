
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__ HMMIO ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int GetProcessHeap () ;
 int GetTempFileNameW (char*,char*,int ,scalar_t__*) ;
 int GetTempPathW (int ,char*) ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int MAX_PATH ;
 int MCIERR_FILE_NOT_FOUND ;
 int MMIO_ALLOCBUF ;
 int MMIO_CREATE ;
 int MMIO_READWRITE ;
 int MMSYSERR_NOERROR ;
 int TRACE (char*,int ) ;
 int WARN (char*,...) ;
 int debugstr_w (scalar_t__*) ;
 scalar_t__ mmioOpenW (scalar_t__*,int *,int) ;

__attribute__((used)) static DWORD create_tmp_file(HMMIO* hFile, LPWSTR* pszTmpFileName)
{
    WCHAR szTmpPath[MAX_PATH];
    WCHAR szPrefix[4];
    DWORD dwRet = MMSYSERR_NOERROR;

    szPrefix[0] = 'M';
    szPrefix[1] = 'C';
    szPrefix[2] = 'I';
    szPrefix[3] = '\0';

    if (!GetTempPathW(ARRAY_SIZE(szTmpPath), szTmpPath)) {
        WARN("can't retrieve temp path!\n");
        *pszTmpFileName = ((void*)0);
        return MCIERR_FILE_NOT_FOUND;
    }

    *pszTmpFileName = HeapAlloc(GetProcessHeap(),
                                HEAP_ZERO_MEMORY,
                                MAX_PATH * sizeof(WCHAR));
    if (!GetTempFileNameW(szTmpPath, szPrefix, 0, *pszTmpFileName)) {
        WARN("can't retrieve temp file name!\n");
        HeapFree(GetProcessHeap(), 0, *pszTmpFileName);
        return MCIERR_FILE_NOT_FOUND;
    }

    TRACE("%s!\n", debugstr_w(*pszTmpFileName));

    if (*pszTmpFileName && (*pszTmpFileName)[0]) {

        *hFile = mmioOpenW(*pszTmpFileName, ((void*)0),
                           MMIO_ALLOCBUF | MMIO_READWRITE | MMIO_CREATE);

        if (*hFile == 0) {
            WARN("can't create file=%s!\n", debugstr_w(*pszTmpFileName));

            HeapFree(GetProcessHeap(), 0, *pszTmpFileName);
            dwRet = MCIERR_FILE_NOT_FOUND;
        }
    }
    return dwRet;
}
