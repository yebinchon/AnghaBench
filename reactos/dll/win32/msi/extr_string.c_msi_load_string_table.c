
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string_table ;
typedef int USHORT ;
typedef int UINT ;
typedef int IStorage ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BYTE ;


 int CP_ACP ;
 int ERR (char*,...) ;
 int ERROR_SUCCESS ;
 int LONG_STR_BYTES ;
 int StringPersistent ;
 int TRACE (char*,int) ;
 int TRUE ;
 int add_string (int *,int,int*,int,int,int ) ;
 int * init_stringtable (int,int) ;
 int msi_free (int*) ;
 int read_stream_data (int *,int ,int ,int **,int*) ;
 int szStringData ;
 int szStringPool ;

string_table *msi_load_string_table( IStorage *stg, UINT *bytes_per_strref )
{
    string_table *st = ((void*)0);
    CHAR *data = ((void*)0);
    USHORT *pool = ((void*)0);
    UINT r, datasize = 0, poolsize = 0, codepage;
    DWORD i, count, offset, len, n, refs;

    r = read_stream_data( stg, szStringPool, TRUE, (BYTE **)&pool, &poolsize );
    if( r != ERROR_SUCCESS)
        goto end;
    r = read_stream_data( stg, szStringData, TRUE, (BYTE **)&data, &datasize );
    if( r != ERROR_SUCCESS)
        goto end;

    if ( (poolsize > 4) && (pool[1] & 0x8000) )
        *bytes_per_strref = LONG_STR_BYTES;
    else
        *bytes_per_strref = sizeof(USHORT);

    count = poolsize/4;
    if( poolsize > 4 )
        codepage = pool[0] | ( (pool[1] & ~0x8000) << 16 );
    else
        codepage = CP_ACP;
    st = init_stringtable( count, codepage );
    if (!st)
        goto end;

    offset = 0;
    n = 1;
    i = 1;
    while( i<count )
    {

        refs = pool[i*2+1];


        if (pool[i*2] == 0 && refs == 0)
        {
            i++;
            n++;
            continue;
        }






        if( pool[i*2] == 0)
        {
            len = (pool[i*2+3] << 16) + pool[i*2+2];
            i += 2;
        }
        else
        {
            len = pool[i*2];
            i += 1;
        }

        if ( (offset + len) > datasize )
        {
            ERR("string table corrupt?\n");
            break;
        }

        r = add_string( st, n, data+offset, len, refs, StringPersistent );
        if( r != n )
            ERR("Failed to add string %d\n", n );
        n++;
        offset += len;
    }

    if ( datasize != offset )
        ERR("string table load failed! (%08x != %08x), please report\n", datasize, offset );

    TRACE("Loaded %d strings\n", count);

end:
    msi_free( pool );
    msi_free( data );

    return st;
}
