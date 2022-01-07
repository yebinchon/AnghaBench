
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
typedef int UINT ;
struct TYPE_4__ {int QuadPart; } ;
struct TYPE_5__ {TYPE_1__ cbSize; } ;
typedef TYPE_2__ STATSTG ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef int BYTE ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int IStorage_OpenStream (int *,int *,int *,int,int ,int **) ;
 int IStream_Read (int *,int *,int,int*) ;
 int IStream_Release (int *) ;
 int IStream_Stat (int *,TYPE_2__*,int ) ;
 int STATFLAG_NONAME ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 int TRACE (char*,int ,int ) ;
 int WARN (char*,...) ;
 int debugstr_w (int *) ;
 int * encode_streamname (int ,int *) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;

UINT read_stream_data( IStorage *stg, LPCWSTR stname, BOOL table,
                       BYTE **pdata, UINT *psz )
{
    HRESULT r;
    UINT ret = ERROR_FUNCTION_FAILED;
    VOID *data;
    ULONG sz, count;
    IStream *stm = ((void*)0);
    STATSTG stat;
    LPWSTR encname;

    encname = encode_streamname(table, stname);

    TRACE("%s -> %s\n",debugstr_w(stname),debugstr_w(encname));

    r = IStorage_OpenStream(stg, encname, ((void*)0),
            STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm);
    msi_free( encname );
    if( FAILED( r ) )
    {
        WARN("open stream failed r = %08x - empty table?\n", r);
        return ret;
    }

    r = IStream_Stat(stm, &stat, STATFLAG_NONAME );
    if( FAILED( r ) )
    {
        WARN("open stream failed r = %08x!\n", r);
        goto end;
    }

    if( stat.cbSize.QuadPart >> 32 )
    {
        WARN("Too big!\n");
        goto end;
    }

    sz = stat.cbSize.QuadPart;
    data = msi_alloc( sz );
    if( !data )
    {
        WARN("couldn't allocate memory r=%08x!\n", r);
        ret = ERROR_NOT_ENOUGH_MEMORY;
        goto end;
    }

    r = IStream_Read(stm, data, sz, &count );
    if( FAILED( r ) || ( count != sz ) )
    {
        msi_free( data );
        WARN("read stream failed r = %08x!\n", r);
        goto end;
    }

    *pdata = data;
    *psz = sz;
    ret = ERROR_SUCCESS;

end:
    IStream_Release( stm );

    return ret;
}
