
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {size_t size; int data; int name; } ;
struct TYPE_5__ {int member_0; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; } ;
struct TYPE_6__ {int member_0; TYPE_1__ member_3; int member_2; int member_1; } ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef size_t DWORD ;
typedef TYPE_2__ CLSID ;


 int CP_ACP ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IStorage_CreateStream (int *,int ,size_t,int ,int ,int **) ;
 int IStorage_Release (int *) ;
 scalar_t__ IStorage_SetClass (int *,TYPE_2__ const*) ;
 int IStream_Release (int *) ;
 scalar_t__ IStream_Write (int *,int ,size_t,size_t*) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 size_t NUM_TRANSFORM_TABLES ;
 size_t STGM_CREATE ;
 size_t STGM_DIRECT ;
 size_t STGM_READWRITE ;
 size_t STGM_SHARE_EXCLUSIVE ;
 size_t STGM_WRITE ;
 scalar_t__ S_OK ;
 scalar_t__ StgCreateDocfile (int *,size_t const,int ,int **) ;
 int mstfile ;
 int ok (int,char*,...) ;
 TYPE_3__* table_transform_data ;

__attribute__((used)) static void generate_transform_manual(void)
{
    IStorage *stg = ((void*)0);
    IStream *stm;
    WCHAR name[0x20];
    HRESULT r;
    DWORD i, count;
    const DWORD mode = STGM_CREATE|STGM_READWRITE|STGM_DIRECT|STGM_SHARE_EXCLUSIVE;

    const CLSID CLSID_MsiTransform = { 0xc1082,0,0,{0xc0,0,0,0,0,0,0,0x46}};

    MultiByteToWideChar(CP_ACP, 0, mstfile, -1, name, 0x20);

    r = StgCreateDocfile(name, mode, 0, &stg);
    ok(r == S_OK, "failed to create storage\n");
    if (!stg)
        return;

    r = IStorage_SetClass( stg, &CLSID_MsiTransform );
    ok(r == S_OK, "failed to set storage type\n");

    for (i=0; i<NUM_TRANSFORM_TABLES; i++)
    {
        r = IStorage_CreateStream( stg, table_transform_data[i].name,
                            STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm );
        if (FAILED(r))
        {
            ok(0, "failed to create stream %08x\n", r);
            continue;
        }

        r = IStream_Write( stm, table_transform_data[i].data,
                          table_transform_data[i].size, &count );
        if (FAILED(r) || count != table_transform_data[i].size)
            ok(0, "failed to write stream\n");
        IStream_Release(stm);
    }

    IStorage_Release(stg);
}
