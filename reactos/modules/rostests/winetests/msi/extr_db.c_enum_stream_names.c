
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_5__ {size_t size; int * data; int name; } ;
struct TYPE_4__ {int pwcsName; } ;
typedef TYPE_1__ STATSTG ;
typedef int IStream ;
typedef int IStorage ;
typedef int IEnumSTATSTG ;
typedef size_t HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int CoTaskMemFree (int ) ;
 scalar_t__ FAILED (size_t) ;
 size_t IEnumSTATSTG_Next (int *,int,TYPE_1__*,size_t*) ;
 int IEnumSTATSTG_Release (int *) ;
 size_t IStorage_EnumElements (int *,int ,int *,int ,int **) ;
 size_t IStorage_OpenStream (int *,int ,int *,int,int ,int **) ;
 size_t IStream_Read (int *,int *,int,size_t*) ;
 int IStream_Release (int *) ;
 int MAX_PATH ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 size_t S_OK ;
 scalar_t__ TRUE ;
 TYPE_2__* database_table_data ;
 int lstrcmpW (int ,int ) ;
 int memcmp (int *,int *,int) ;
 int memset (int *,char,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void enum_stream_names(IStorage *stg)
{
    IEnumSTATSTG *stgenum = ((void*)0);
    IStream *stm;
    HRESULT hr;
    STATSTG stat;
    ULONG n, count;
    BYTE data[MAX_PATH];
    BYTE check[MAX_PATH];
    DWORD sz;

    memset(check, 'a', MAX_PATH);

    hr = IStorage_EnumElements(stg, 0, ((void*)0), 0, &stgenum);
    ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

    n = 0;
    while(TRUE)
    {
        count = 0;
        hr = IEnumSTATSTG_Next(stgenum, 1, &stat, &count);
        if(FAILED(hr) || !count)
            break;

        ok(!lstrcmpW(stat.pwcsName, database_table_data[n].name),
           "Expected table %d name to match\n", n);

        stm = ((void*)0);
        hr = IStorage_OpenStream(stg, stat.pwcsName, ((void*)0),
                                 STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm);
        ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);
        ok(stm != ((void*)0), "Expected non-NULL stream\n");

        CoTaskMemFree(stat.pwcsName);

        sz = MAX_PATH;
        memset(data, 'a', MAX_PATH);
        hr = IStream_Read(stm, data, sz, &count);
        ok(hr == S_OK, "Expected S_OK, got %08x\n", hr);

        ok(count == database_table_data[n].size,
           "Expected %d, got %d\n", database_table_data[n].size, count);

        if (!database_table_data[n].size)
            ok(!memcmp(data, check, MAX_PATH), "data should not be changed\n");
        else
            ok(!memcmp(data, database_table_data[n].data, database_table_data[n].size),
               "Expected table %d data to match\n", n);

        IStream_Release(stm);
        n++;
    }

    ok(n == 3, "Expected 3, got %d\n", n);

    IEnumSTATSTG_Release(stgenum);
}
