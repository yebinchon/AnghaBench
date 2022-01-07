
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {int LowPart; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int IStream ;
typedef int IMoniker ;
typedef int HRESULT ;
typedef int DWORD ;


 int CreateFileMoniker (int ,int **) ;
 int CreateStreamOnHGlobal (int *,int ,int **) ;
 int IMoniker_Load (int *,int *) ;
 int IMoniker_Release (int *) ;
 int IMoniker_Save (int *,int *,int ) ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,TYPE_3__,int ,int *) ;
 int IStream_SetSize (int *,TYPE_2__) ;
 int IStream_Write (int *,int*,int,int *) ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 scalar_t__ lstrlenW (int ) ;
 int ok_ole_success (int ,char*) ;
 int wszFileName1 ;

__attribute__((used)) static void test_save_load_filemoniker(void)
{
    IMoniker* pMk;
    IStream* pStm;
    HRESULT hr;
    ULARGE_INTEGER size;
    LARGE_INTEGER zero_pos, dead_pos, nulls_pos;
    DWORD some_val = 0xFEDCBA98;
    int i;


    zero_pos.QuadPart = 0;
    dead_pos.QuadPart = sizeof(WORD) + sizeof(DWORD) + (lstrlenW(wszFileName1) + 1) + sizeof(WORD);
    nulls_pos.QuadPart = dead_pos.QuadPart + sizeof(WORD);


    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &pStm);
    ok_ole_success(hr, "CreateStreamOnHGlobal");

    size.u.LowPart = 128;
    hr = IStream_SetSize(pStm, size);
    ok_ole_success(hr, "IStream_SetSize");


    hr = CreateFileMoniker(wszFileName1, &pMk);
    ok_ole_success(hr, "CreateFileMoniker");

    hr = IMoniker_Save(pMk, pStm, TRUE);
    ok_ole_success(hr, "IMoniker_Save");
    IMoniker_Release(pMk);


    hr = IStream_Seek(pStm, zero_pos, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, "IStream_Seek");
    hr = IStream_Write(pStm, &some_val, sizeof(WORD), ((void*)0));
    ok_ole_success(hr, "IStream_Write");

    hr = IStream_Seek(pStm, dead_pos, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, "IStream_Seek");
    hr = IStream_Write(pStm, &some_val, sizeof(WORD), ((void*)0));
    ok_ole_success(hr, "IStream_Write");

    hr = IStream_Seek(pStm, nulls_pos, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, "IStream_Seek");
    for(i = 0; i < 5; ++i){
        hr = IStream_Write(pStm, &some_val, sizeof(DWORD), ((void*)0));
        ok_ole_success(hr, "IStream_Write");
    }


    hr = IStream_Seek(pStm, zero_pos, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, "IStream_Seek");


    hr = CreateFileMoniker(wszFileName1, &pMk);
    ok_ole_success(hr, "CreateFileMoniker");

    hr = IMoniker_Load(pMk, pStm);
    ok_ole_success(hr, "IMoniker_Load");

    IMoniker_Release(pMk);
    IStream_Release(pStm);
}
