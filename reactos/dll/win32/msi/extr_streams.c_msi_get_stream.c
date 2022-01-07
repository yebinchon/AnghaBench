
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
struct TYPE_5__ {int * stream; } ;
typedef TYPE_1__ MSISTREAM ;
typedef int MSIDATABASE ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IStream_AddRef (int *) ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int STREAM_SEEK_SET ;
 scalar_t__ append_stream (int *,int const*,int *) ;
 int * encode_streamname (int ,int const*) ;
 TYPE_1__* find_stream (int *,int const*) ;
 int msi_free (int *) ;
 int open_stream (int *,int *,int **) ;

UINT msi_get_stream( MSIDATABASE *db, const WCHAR *name, IStream **ret )
{
    MSISTREAM *stream;
    WCHAR *encname;
    HRESULT hr;
    UINT r;

    if ((stream = find_stream( db, name )))
    {
        LARGE_INTEGER pos;

        pos.QuadPart = 0;
        hr = IStream_Seek( stream->stream, pos, STREAM_SEEK_SET, ((void*)0) );
        if (FAILED( hr ))
            return ERROR_FUNCTION_FAILED;

        *ret = stream->stream;
        IStream_AddRef( *ret );
        return ERROR_SUCCESS;
    }

    if (!(encname = encode_streamname( FALSE, name )))
        return ERROR_OUTOFMEMORY;

    hr = open_stream( db, encname, ret );
    msi_free( encname );
    if (FAILED( hr ))
        return ERROR_FUNCTION_FAILED;

    r = append_stream( db, name, *ret );
    if (r != ERROR_SUCCESS)
    {
        IStream_Release( *ret );
        return r;
    }

    IStream_AddRef( *ret );
    return ERROR_SUCCESS;
}
