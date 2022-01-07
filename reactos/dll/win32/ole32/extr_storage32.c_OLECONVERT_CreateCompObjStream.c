
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pCompObjUnknown2 ;
typedef int pCompObjUnknown1 ;
typedef int WCHAR ;
struct TYPE_3__ {int* byUnknown1; int* byUnknown2; int dwOleTypeNameLength; int* strOleTypeName; int dwProgIDNameLength; int* strProgIDName; int dwCLSIDNameLength; int* strCLSIDName; int clsid; } ;
typedef TYPE_1__ OLECONVERT_ISTORAGE_COMPOBJ ;
typedef int LPSTORAGE ;
typedef char* LPCSTR ;
typedef scalar_t__ LONG ;
typedef int IStream ;
typedef int IStorageCompObj ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef int BYTE ;


 scalar_t__ CLSIDFromProgID (int*,int *) ;
 int CP_ACP ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 scalar_t__ IStorage_CreateStream (int ,int const*,int,int ,int ,int **) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,int*,int,int *) ;
 int MAXIMUM_ALLOWED ;
 int MultiByteToWideChar (int ,int ,int*,int,int*,int) ;
 int OLESTREAM_MAX_STR_LEN ;
 int RegCloseKey (int ) ;
 scalar_t__ RegQueryValueA (int ,int *,char*,scalar_t__*) ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 scalar_t__ S_OK ;
 int WriteClassStm (int *,int *) ;
 int memcpy (int*,int const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ open_classes_key (int ,int*,int ,int *) ;
 int strcpy (int*,char*) ;
 void* strlen (char*) ;

HRESULT OLECONVERT_CreateCompObjStream(LPSTORAGE pStorage, LPCSTR strOleTypeName)
{
    IStream *pStream;
    HRESULT hStorageRes, hRes = S_OK;
    OLECONVERT_ISTORAGE_COMPOBJ IStorageCompObj;
    static const WCHAR wstrStreamName[] = {1,'C', 'o', 'm', 'p', 'O', 'b', 'j', 0};
    WCHAR bufferW[OLESTREAM_MAX_STR_LEN];

    static const BYTE pCompObjUnknown1[] = {0x01, 0x00, 0xFE, 0xFF, 0x03, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF};
    static const BYTE pCompObjUnknown2[] = {0xF4, 0x39, 0xB2, 0x71};


    memset(&IStorageCompObj, 0, sizeof(IStorageCompObj));
    memcpy(IStorageCompObj.byUnknown1, pCompObjUnknown1, sizeof(pCompObjUnknown1));
    memcpy(IStorageCompObj.byUnknown2, pCompObjUnknown2, sizeof(pCompObjUnknown2));



    hStorageRes = IStorage_CreateStream(pStorage, wstrStreamName,
        STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &pStream );
    if(hStorageRes == S_OK)
    {

        IStorageCompObj.dwOleTypeNameLength = strlen(strOleTypeName)+1;
        strcpy(IStorageCompObj.strOleTypeName, strOleTypeName);



        IStorageCompObj.dwProgIDNameLength = strlen(strOleTypeName)+1;
        strcpy(IStorageCompObj.strProgIDName, strOleTypeName);


        MultiByteToWideChar( CP_ACP, 0, IStorageCompObj.strProgIDName, -1,
                             bufferW, OLESTREAM_MAX_STR_LEN );
        hRes = CLSIDFromProgID(bufferW, &(IStorageCompObj.clsid));

        if(hRes == S_OK)
        {
            HKEY hKey;
            LONG hErr;

            hErr = open_classes_key(HKEY_CLASSES_ROOT, bufferW, MAXIMUM_ALLOWED, &hKey);
            if(hErr == ERROR_SUCCESS)
            {
                char strTemp[OLESTREAM_MAX_STR_LEN];
                IStorageCompObj.dwCLSIDNameLength = OLESTREAM_MAX_STR_LEN;
                hErr = RegQueryValueA(hKey, ((void*)0), strTemp, (LONG*) &(IStorageCompObj.dwCLSIDNameLength));
                if(hErr == ERROR_SUCCESS)
                {
                    strcpy(IStorageCompObj.strCLSIDName, strTemp);
                }
                RegCloseKey(hKey);
            }
        }


        hRes = IStream_Write(pStream, IStorageCompObj.byUnknown1, sizeof(IStorageCompObj.byUnknown1), ((void*)0));

        WriteClassStm(pStream,&(IStorageCompObj.clsid));

        hRes = IStream_Write(pStream, &(IStorageCompObj.dwCLSIDNameLength), sizeof(IStorageCompObj.dwCLSIDNameLength), ((void*)0));
        if(IStorageCompObj.dwCLSIDNameLength > 0)
        {
            hRes = IStream_Write(pStream, IStorageCompObj.strCLSIDName, IStorageCompObj.dwCLSIDNameLength, ((void*)0));
        }
        hRes = IStream_Write(pStream, &(IStorageCompObj.dwOleTypeNameLength) , sizeof(IStorageCompObj.dwOleTypeNameLength), ((void*)0));
        if(IStorageCompObj.dwOleTypeNameLength > 0)
        {
            hRes = IStream_Write(pStream, IStorageCompObj.strOleTypeName , IStorageCompObj.dwOleTypeNameLength, ((void*)0));
        }
        hRes = IStream_Write(pStream, &(IStorageCompObj.dwProgIDNameLength) , sizeof(IStorageCompObj.dwProgIDNameLength), ((void*)0));
        if(IStorageCompObj.dwProgIDNameLength > 0)
        {
            hRes = IStream_Write(pStream, IStorageCompObj.strProgIDName , IStorageCompObj.dwProgIDNameLength, ((void*)0));
        }
        hRes = IStream_Write(pStream, IStorageCompObj.byUnknown2 , sizeof(IStorageCompObj.byUnknown2), ((void*)0));
        IStream_Release(pStream);
    }
    return hRes;
}
