
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int WCHAR ;
typedef int LPCSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int CP_ACP ;
 scalar_t__ IStorage_CreateStream (int *,int const*,int,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,int const*,int,int*) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,int ,int,int*,int) ;
 int STGM_DIRECT ;
 int STGM_READWRITE ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 scalar_t__ S_OK ;
 scalar_t__ StgOpenStorage (int*,int *,int const,int *,int ,int **) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void set_admin_property_stream(LPCSTR file)
{
    IStorage *stg;
    IStream *stm;
    WCHAR fileW[MAX_PATH];
    HRESULT hr;
    DWORD count;
    const DWORD mode = STGM_DIRECT | STGM_READWRITE | STGM_SHARE_EXCLUSIVE;


    static const WCHAR stmname[] = {0x41ca,0x4330,0x3e71,0x44b5,0x4233,0x45f5,0x422c,0x4836,0};
    static const WCHAR data[] = {'M','Y','P','R','O','P','=','2','7','1','8',' ',
        'M','y','P','r','o','p','=','4','2',0};

    MultiByteToWideChar(CP_ACP, 0, file, -1, fileW, MAX_PATH);

    hr = StgOpenStorage(fileW, ((void*)0), mode, ((void*)0), 0, &stg);
    ok(hr == S_OK, "Expected S_OK, got %d\n", hr);
    if (!stg)
        return;

    hr = IStorage_CreateStream(stg, stmname, STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    ok(hr == S_OK, "Expected S_OK, got %d\n", hr);

    hr = IStream_Write(stm, data, sizeof(data), &count);
    ok(hr == S_OK, "Expected S_OK, got %d\n", hr);

    IStream_Release(stm);
    IStorage_Release(stg);
}
