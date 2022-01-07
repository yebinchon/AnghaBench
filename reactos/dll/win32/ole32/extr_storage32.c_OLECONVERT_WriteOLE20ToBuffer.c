
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPSTORAGE ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int ) ;
 int DeleteFileW (char*) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int GetProcessHeap () ;
 int GetTempFileNameW (char*,char const*,int ,char*) ;
 int GetTempPathW (int,char*) ;
 int * HeapAlloc (int ,int ,int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IStorage_CopyTo (int ,int ,int *,int *,int *) ;
 int IStorage_Release (int *) ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,int *,int ,int *,int ) ;
 int STGM_CREATE ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (char*,int,int ,int **) ;

__attribute__((used)) static DWORD OLECONVERT_WriteOLE20ToBuffer(LPSTORAGE pStorage, BYTE **pData)
{
    HANDLE hFile;
    HRESULT hRes;
    DWORD nDataLength = 0;
    IStorage *pTempStorage;
    WCHAR wstrTempDir[MAX_PATH], wstrTempFile[MAX_PATH];
    static const WCHAR wstrPrefix[] = {'s', 'i', 's', 0};

    *pData = ((void*)0);


    GetTempPathW(MAX_PATH, wstrTempDir);
    GetTempFileNameW(wstrTempDir, wstrPrefix, 0, wstrTempFile);
    hRes = StgCreateDocfile(wstrTempFile, STGM_CREATE | STGM_READWRITE | STGM_SHARE_EXCLUSIVE, 0, &pTempStorage);

    if(hRes == S_OK)
    {

        IStorage_CopyTo(pStorage, 0, ((void*)0), ((void*)0), pTempStorage);
        IStorage_Release(pTempStorage);


        hFile = CreateFileW(wstrTempFile, GENERIC_READ, 0, ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
        if(hFile != INVALID_HANDLE_VALUE)
        {
            nDataLength = GetFileSize(hFile, ((void*)0));
            *pData = HeapAlloc(GetProcessHeap(),0,nDataLength);
            ReadFile(hFile, *pData, nDataLength, &nDataLength, 0);
            CloseHandle(hFile);
        }
        DeleteFileW(wstrTempFile);
    }
    return nDataLength;
}
