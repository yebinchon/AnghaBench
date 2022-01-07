
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int num_streams; int storage; } ;
struct TYPE_8__ {scalar_t__ type; int* pwcsName; } ;
typedef TYPE_1__ STATSTG ;
typedef TYPE_2__ MSIDATABASE ;
typedef int IStream ;
typedef int IEnumSTATSTG ;
typedef int HRESULT ;


 int CoTaskMemFree (int*) ;
 int ERR (char*,int ) ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int IEnumSTATSTG_Next (int *,int,TYPE_1__*,scalar_t__*) ;
 int IEnumSTATSTG_Release (int *) ;
 int IStorage_EnumElements (int ,int ,int *,int ,int **) ;
 int MAX_STREAM_NAME_LEN ;
 scalar_t__ STGTY_STREAM ;
 int TRACE (char*,int ) ;
 scalar_t__ append_stream (TYPE_2__*,int *,int *) ;
 int debugstr_w (int *) ;
 int decode_streamname (int*,int *) ;
 scalar_t__ find_stream (TYPE_2__*,int *) ;
 int open_stream (TYPE_2__*,int*,int **) ;

__attribute__((used)) static UINT load_streams( MSIDATABASE *db )
{
    WCHAR decoded[MAX_STREAM_NAME_LEN + 1];
    IEnumSTATSTG *stgenum;
    STATSTG stat;
    HRESULT hr;
    UINT count, r = ERROR_SUCCESS;
    IStream *stream;

    hr = IStorage_EnumElements( db->storage, 0, ((void*)0), 0, &stgenum );
    if (FAILED( hr ))
        return ERROR_FUNCTION_FAILED;

    for (;;)
    {
        count = 0;
        hr = IEnumSTATSTG_Next( stgenum, 1, &stat, &count );
        if (FAILED( hr ) || !count)
            break;


        if (stat.type != STGTY_STREAM || *stat.pwcsName == 0x4840)
        {
            CoTaskMemFree( stat.pwcsName );
            continue;
        }
        decode_streamname( stat.pwcsName, decoded );
        if (find_stream( db, decoded ))
        {
            CoTaskMemFree( stat.pwcsName );
            continue;
        }
        TRACE("found new stream %s\n", debugstr_w( decoded ));

        hr = open_stream( db, stat.pwcsName, &stream );
        CoTaskMemFree( stat.pwcsName );
        if (FAILED( hr ))
        {
            ERR("unable to open stream %08x\n", hr);
            r = ERROR_FUNCTION_FAILED;
            break;
        }

        r = append_stream( db, decoded, stream );
        if (r != ERROR_SUCCESS)
            break;
    }

    TRACE("loaded %u streams\n", db->num_streams);
    IEnumSTATSTG_Release( stgenum );
    return r;
}
