
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int dwTypeID; int* pData; int dwDataLength; scalar_t__ dwMetaFileHeight; scalar_t__ dwMetaFileWidth; void* dwOleID; } ;
typedef TYPE_1__ OLECONVERT_OLESTREAM_DATA ;
typedef int LPSTORAGE ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;


 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 scalar_t__ IStorage_OpenStream (int ,int const*,int *,int,int ,int **) ;
 int IStream_Read (int *,int*,int,int *) ;
 int IStream_Release (int *) ;
 void* OLESTREAM_ID ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ S_OK ;

__attribute__((used)) static void OLECONVERT_GetOle10PresData(LPSTORAGE pStorage, OLECONVERT_OLESTREAM_DATA *pOleStreamData)
{

    HRESULT hRes;
    IStream *pStream;
    static const WCHAR wstrStreamName[] = {1, 'O', 'l', 'e', '1', '0', 'N', 'a', 't', 'i', 'v', 'e', 0};


    pOleStreamData[0].dwOleID = OLESTREAM_ID;
    pOleStreamData[0].dwTypeID = 2;
    pOleStreamData[1].dwOleID = OLESTREAM_ID;
    pOleStreamData[1].dwTypeID = 0;
    pOleStreamData[0].dwMetaFileWidth = 0;
    pOleStreamData[0].dwMetaFileHeight = 0;
    pOleStreamData[0].pData = ((void*)0);
    pOleStreamData[1].pData = ((void*)0);


    hRes = IStorage_OpenStream(pStorage, wstrStreamName, ((void*)0),
        STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &pStream );
    if(hRes == S_OK)
    {


        IStream_Read(pStream, &(pOleStreamData->dwDataLength), sizeof(pOleStreamData->dwDataLength), ((void*)0));
        if(pOleStreamData->dwDataLength > 0)
        {
            pOleStreamData->pData = HeapAlloc(GetProcessHeap(),0,pOleStreamData->dwDataLength);
            IStream_Read(pStream, pOleStreamData->pData, pOleStreamData->dwDataLength, ((void*)0));
        }
        IStream_Release(pStream);
    }

}
