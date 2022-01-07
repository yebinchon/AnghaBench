
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_data {size_t size; int data; int name; } ;
typedef size_t UINT ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef size_t DWORD ;


 scalar_t__ FAILED (int ) ;
 int IStorage_CreateStream (int *,int ,int,int ,int ,int **) ;
 int IStream_Release (int *) ;
 int IStream_Write (int *,int ,size_t,size_t*) ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 int ok (int ,char*,...) ;

__attribute__((used)) static void write_tables( IStorage *stg, const struct table_data *tables, UINT num_tables )
{
    IStream *stm;
    DWORD i, count;
    HRESULT r;

    for (i = 0; i < num_tables; i++)
    {
        r = IStorage_CreateStream( stg, tables[i].name, STGM_WRITE|STGM_SHARE_EXCLUSIVE, 0, 0, &stm );
        if (FAILED( r ))
        {
            ok( 0, "failed to create stream 0x%08x\n", r );
            continue;
        }

        r = IStream_Write( stm, tables[i].data, tables[i].size, &count );
        if (FAILED( r ) || count != tables[i].size)
            ok( 0, "failed to write stream\n" );
        IStream_Release( stm );
    }
}
