
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dwDataLength ;
typedef int WCHAR ;
typedef int LPSTORAGE ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int const DWORD ;
typedef int BYTE ;


 scalar_t__ IStorage_CreateStream (int ,int const*,int,int ,int ,int **) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,int const*,int const,int *) ;
 int STGM_CREATE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 scalar_t__ S_OK ;

__attribute__((used)) static void OLECONVERT_CreateOle10NativeStream(LPSTORAGE pStorage, const BYTE *pData, DWORD dwDataLength)
{
    HRESULT hRes;
    IStream *pStream;
    static const WCHAR wstrStreamName[] = {1, 'O', 'l', 'e', '1', '0', 'N', 'a', 't', 'i', 'v', 'e', 0};


    hRes = IStorage_CreateStream(pStorage, wstrStreamName,
        STGM_CREATE | STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &pStream );

    if(hRes == S_OK)
    {

        hRes = IStream_Write(pStream, &dwDataLength, sizeof(dwDataLength), ((void*)0));
        hRes = IStream_Write(pStream, pData, dwDataLength, ((void*)0));
        IStream_Release(pStream);
    }

}
