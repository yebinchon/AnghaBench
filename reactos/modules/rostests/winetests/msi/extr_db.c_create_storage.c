
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IStorage_CreateStream (int *,int *,int,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 int IStream_Write (int *,char*,int,int *) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int STGM_CREATE ;
 int STGM_DIRECT ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 scalar_t__ SUCCEEDED (int ) ;
 int StgCreateDocfile (int *,int,int ,int **) ;
 int TRUE ;

__attribute__((used)) static BOOL create_storage(LPCSTR name)
{
    WCHAR nameW[MAX_PATH];
    IStorage *stg;
    IStream *stm;
    HRESULT hr;
    DWORD count;
    BOOL res = FALSE;

    MultiByteToWideChar(CP_ACP, 0, name, -1, nameW, MAX_PATH);
    hr = StgCreateDocfile(nameW, STGM_CREATE | STGM_READWRITE |
                          STGM_DIRECT | STGM_SHARE_EXCLUSIVE, 0, &stg);
    if (FAILED(hr))
        return FALSE;

    hr = IStorage_CreateStream(stg, nameW, STGM_WRITE | STGM_SHARE_EXCLUSIVE,
                               0, 0, &stm);
    if (FAILED(hr))
        goto done;

    hr = IStream_Write(stm, "stgdata", 8, &count);
    if (SUCCEEDED(hr))
        res = TRUE;

done:
    IStream_Release(stm);
    IStorage_Release(stg);

    return res;
}
