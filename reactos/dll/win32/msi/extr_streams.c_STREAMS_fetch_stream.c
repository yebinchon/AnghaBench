
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef size_t UINT ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
struct TYPE_8__ {TYPE_2__* db; } ;
struct TYPE_7__ {size_t num_streams; TYPE_1__* streams; } ;
struct TYPE_6__ {int * stream; } ;
typedef TYPE_3__ MSISTREAMSVIEW ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int IStream_AddRef (int *) ;
 int IStream_Seek (int *,TYPE_4__,int ,int *) ;
 int STREAM_SEEK_SET ;
 int TRACE (char*,struct tagMSIVIEW*,size_t,size_t,int **) ;

__attribute__((used)) static UINT STREAMS_fetch_stream(struct tagMSIVIEW *view, UINT row, UINT col, IStream **stm)
{
    MSISTREAMSVIEW *sv = (MSISTREAMSVIEW *)view;
    LARGE_INTEGER pos;
    HRESULT hr;

    TRACE("(%p, %d, %d, %p)\n", view, row, col, stm);

    if (row >= sv->db->num_streams)
        return ERROR_FUNCTION_FAILED;

    pos.QuadPart = 0;
    hr = IStream_Seek( sv->db->streams[row].stream, pos, STREAM_SEEK_SET, ((void*)0) );
    if (FAILED( hr ))
        return ERROR_FUNCTION_FAILED;

    *stm = sv->db->streams[row].stream;
    IStream_AddRef( *stm );

    return ERROR_SUCCESS;
}
