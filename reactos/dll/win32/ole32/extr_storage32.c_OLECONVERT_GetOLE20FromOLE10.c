
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


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int ) ;
 int DeleteFileW (char*) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetTempFileNameW (char*,char const*,int ,char*) ;
 int GetTempPathW (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ IStorage_CopyTo (int *,int ,int *,int *,int ) ;
 int IStorage_Release (int *) ;
 int MAX_PATH ;
 int STGM_READ ;
 scalar_t__ S_OK ;
 scalar_t__ StgOpenStorage (char*,int *,int ,int *,int ,int **) ;
 int WriteFile (scalar_t__,int const*,int ,int *,int *) ;

__attribute__((used)) static void OLECONVERT_GetOLE20FromOLE10(LPSTORAGE pDestStorage, const BYTE *pBuffer, DWORD nBufferLength)
{
    HRESULT hRes;
    HANDLE hFile;
    IStorage *pTempStorage;
    DWORD dwNumOfBytesWritten;
    WCHAR wstrTempDir[MAX_PATH], wstrTempFile[MAX_PATH];
    static const WCHAR wstrPrefix[] = {'s', 'i', 's', 0};


    GetTempPathW(MAX_PATH, wstrTempDir);
    GetTempFileNameW(wstrTempDir, wstrPrefix, 0, wstrTempFile);
    hFile = CreateFileW(wstrTempFile, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);

    if(hFile != INVALID_HANDLE_VALUE)
    {

        WriteFile(hFile, pBuffer, nBufferLength, &dwNumOfBytesWritten, ((void*)0));
        CloseHandle(hFile);


        hRes = StgOpenStorage(wstrTempFile, ((void*)0), STGM_READ, ((void*)0), 0, &pTempStorage);
        if(hRes == S_OK)
        {
            hRes = IStorage_CopyTo(pTempStorage, 0, ((void*)0), ((void*)0), pDestStorage);
            IStorage_Release(pTempStorage);
        }
        DeleteFileW(wstrTempFile);
    }
}
