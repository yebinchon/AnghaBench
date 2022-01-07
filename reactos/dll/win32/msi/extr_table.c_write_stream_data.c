
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef int LPCVOID ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int IStorage_CreateStream (int *,int ,int,int ,int ,int **) ;
 int IStorage_OpenStream (int *,int ,int *,int,int ,int **) ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int IStream_SetSize (int *,TYPE_1__) ;
 int IStream_Write (int *,int ,scalar_t__,scalar_t__*) ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 int STREAM_SEEK_SET ;
 int WARN (char*,...) ;
 int encode_streamname (int ,int ) ;
 int msi_free (int ) ;

UINT write_stream_data( IStorage *stg, LPCWSTR stname,
                        LPCVOID data, UINT sz, BOOL bTable )
{
    HRESULT r;
    UINT ret = ERROR_FUNCTION_FAILED;
    ULONG count;
    IStream *stm = ((void*)0);
    ULARGE_INTEGER size;
    LARGE_INTEGER pos;
    LPWSTR encname;

    encname = encode_streamname(bTable, stname );
    r = IStorage_OpenStream( stg, encname, ((void*)0),
            STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, &stm);
    if( FAILED(r) )
    {
        r = IStorage_CreateStream( stg, encname,
                STGM_WRITE | STGM_SHARE_EXCLUSIVE, 0, 0, &stm);
    }
    msi_free( encname );
    if( FAILED( r ) )
    {
        WARN("open stream failed r = %08x\n", r);
        return ret;
    }

    size.QuadPart = sz;
    r = IStream_SetSize( stm, size );
    if( FAILED( r ) )
    {
        WARN("Failed to SetSize\n");
        goto end;
    }

    pos.QuadPart = 0;
    r = IStream_Seek( stm, pos, STREAM_SEEK_SET, ((void*)0) );
    if( FAILED( r ) )
    {
        WARN("Failed to Seek\n");
        goto end;
    }

    if (sz)
    {
        r = IStream_Write(stm, data, sz, &count );
        if( FAILED( r ) || ( count != sz ) )
        {
            WARN("Failed to Write\n");
            goto end;
        }
    }

    ret = ERROR_SUCCESS;

end:
    IStream_Release( stm );

    return ret;
}
