#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pCompObjUnknown2 ;
typedef  int /*<<< orphan*/  pCompObjUnknown1 ;
typedef  int WCHAR ;
struct TYPE_3__ {int* byUnknown1; int* byUnknown2; int dwOleTypeNameLength; int* strOleTypeName; int dwProgIDNameLength; int* strProgIDName; int dwCLSIDNameLength; int* strCLSIDName; int /*<<< orphan*/  clsid; } ;
typedef  TYPE_1__ OLECONVERT_ISTORAGE_COMPOBJ ;
typedef  int /*<<< orphan*/  LPSTORAGE ;
typedef  char* LPCSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorageCompObj ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int OLESTREAM_MAX_STR_LEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int STGM_WRITE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int*,char*) ; 
 void* FUNC12 (char*) ; 

HRESULT FUNC13(LPSTORAGE pStorage, LPCSTR strOleTypeName)
{
    IStream *pStream;
    HRESULT hStorageRes, hRes = S_OK;
    OLECONVERT_ISTORAGE_COMPOBJ IStorageCompObj;
    static const WCHAR wstrStreamName[] = {1,'C', 'o', 'm', 'p', 'O', 'b', 'j', 0};
    WCHAR bufferW[OLESTREAM_MAX_STR_LEN];

    static const BYTE pCompObjUnknown1[] = {0x01, 0x00, 0xFE, 0xFF, 0x03, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF};
    static const BYTE pCompObjUnknown2[] = {0xF4, 0x39, 0xB2, 0x71};

    /* Initialize the CompObj structure */
    FUNC9(&IStorageCompObj, 0, sizeof(IStorageCompObj));
    FUNC8(IStorageCompObj.byUnknown1, pCompObjUnknown1, sizeof(pCompObjUnknown1));
    FUNC8(IStorageCompObj.byUnknown2, pCompObjUnknown2, sizeof(pCompObjUnknown2));


    /*  Create a CompObj stream if it doesn't exist */
    hStorageRes = FUNC1(pStorage, wstrStreamName,
        STGM_WRITE  | STGM_SHARE_EXCLUSIVE, 0, 0, &pStream );
    if(hStorageRes == S_OK)
    {
        /* copy the OleTypeName to the compobj struct */
        IStorageCompObj.dwOleTypeNameLength = FUNC12(strOleTypeName)+1;
        FUNC11(IStorageCompObj.strOleTypeName, strOleTypeName);

        /* copy the OleTypeName to the compobj struct */
        /* Note: in the test made, these were Identical      */
        IStorageCompObj.dwProgIDNameLength = FUNC12(strOleTypeName)+1;
        FUNC11(IStorageCompObj.strProgIDName, strOleTypeName);

        /* Get the CLSID */
        FUNC4( CP_ACP, 0, IStorageCompObj.strProgIDName, -1,
                             bufferW, OLESTREAM_MAX_STR_LEN );
        hRes = FUNC0(bufferW, &(IStorageCompObj.clsid));

        if(hRes == S_OK)
        {
            HKEY hKey;
            LONG hErr;
            /* Get the CLSID Default Name from the Registry */
            hErr = FUNC10(HKEY_CLASSES_ROOT, bufferW, MAXIMUM_ALLOWED, &hKey);
            if(hErr == ERROR_SUCCESS)
            {
                char strTemp[OLESTREAM_MAX_STR_LEN];
                IStorageCompObj.dwCLSIDNameLength = OLESTREAM_MAX_STR_LEN;
                hErr = FUNC6(hKey, NULL, strTemp, (LONG*) &(IStorageCompObj.dwCLSIDNameLength));
                if(hErr == ERROR_SUCCESS)
                {
                    FUNC11(IStorageCompObj.strCLSIDName, strTemp);
                }
                FUNC5(hKey);
            }
        }

        /* Write CompObj Structure to stream */
        hRes = FUNC3(pStream, IStorageCompObj.byUnknown1, sizeof(IStorageCompObj.byUnknown1), NULL);

        FUNC7(pStream,&(IStorageCompObj.clsid));

        hRes = FUNC3(pStream, &(IStorageCompObj.dwCLSIDNameLength), sizeof(IStorageCompObj.dwCLSIDNameLength), NULL);
        if(IStorageCompObj.dwCLSIDNameLength > 0)
        {
            hRes = FUNC3(pStream, IStorageCompObj.strCLSIDName, IStorageCompObj.dwCLSIDNameLength, NULL);
        }
        hRes = FUNC3(pStream, &(IStorageCompObj.dwOleTypeNameLength) , sizeof(IStorageCompObj.dwOleTypeNameLength), NULL);
        if(IStorageCompObj.dwOleTypeNameLength > 0)
        {
            hRes = FUNC3(pStream, IStorageCompObj.strOleTypeName , IStorageCompObj.dwOleTypeNameLength, NULL);
        }
        hRes = FUNC3(pStream, &(IStorageCompObj.dwProgIDNameLength) , sizeof(IStorageCompObj.dwProgIDNameLength), NULL);
        if(IStorageCompObj.dwProgIDNameLength > 0)
        {
            hRes = FUNC3(pStream, IStorageCompObj.strProgIDName , IStorageCompObj.dwProgIDNameLength, NULL);
        }
        hRes = FUNC3(pStream, IStorageCompObj.byUnknown2 , sizeof(IStorageCompObj.byUnknown2), NULL);
        FUNC2(pStream);
    }
    return hRes;
}