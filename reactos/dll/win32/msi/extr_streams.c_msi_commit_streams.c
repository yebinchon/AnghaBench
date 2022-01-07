
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_5__ {size_t num_streams; TYPE_1__* streams; int storage; int strings; } ;
struct TYPE_4__ {int stream; int str_index; } ;
typedef TYPE_2__ MSIDATABASE ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;


 int ERR (char*,int ,scalar_t__) ;
 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_OUTOFMEMORY ;
 size_t ERROR_SUCCESS ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ IStorage_CreateStream (int ,int *,int,int ,int ,int **) ;
 scalar_t__ IStream_Commit (int *,int ) ;
 int IStream_Release (int *) ;
 int STGM_SHARE_EXCLUSIVE ;
 int STGM_WRITE ;
 scalar_t__ STG_E_FILEALREADYEXISTS ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int TRACE (char*,size_t) ;
 int debugstr_w (int *) ;
 int * encode_streamname (int ,int const*) ;
 int msi_free (int *) ;
 int * msi_string_lookup (int ,int ,int *) ;
 scalar_t__ write_stream (int *,int ) ;

UINT msi_commit_streams( MSIDATABASE *db )
{
    UINT i;
    const WCHAR *name;
    WCHAR *encname;
    IStream *stream;
    HRESULT hr;

    TRACE("got %u streams\n", db->num_streams);

    for (i = 0; i < db->num_streams; i++)
    {
        name = msi_string_lookup( db->strings, db->streams[i].str_index, ((void*)0) );
        if (!(encname = encode_streamname( FALSE, name ))) return ERROR_OUTOFMEMORY;

        hr = IStorage_CreateStream( db->storage, encname, STGM_WRITE|STGM_SHARE_EXCLUSIVE, 0, 0, &stream );
        if (SUCCEEDED( hr ))
        {
            hr = write_stream( stream, db->streams[i].stream );
            if (FAILED( hr ))
            {
                ERR("failed to write stream %s (hr = %08x)\n", debugstr_w(encname), hr);
                msi_free( encname );
                IStream_Release( stream );
                return ERROR_FUNCTION_FAILED;
            }
            hr = IStream_Commit( stream, 0 );
            IStream_Release( stream );
            if (FAILED( hr ))
            {
                ERR("failed to commit stream %s (hr = %08x)\n", debugstr_w(encname), hr);
                msi_free( encname );
                return ERROR_FUNCTION_FAILED;
            }
        }
        else if (hr != STG_E_FILEALREADYEXISTS)
        {
            ERR("failed to create stream %s (hr = %08x)\n", debugstr_w(encname), hr);
            msi_free( encname );
            return ERROR_FUNCTION_FAILED;
        }
        msi_free( encname );
    }

    return ERROR_SUCCESS;
}
