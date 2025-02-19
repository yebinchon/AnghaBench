
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int stgmed_obj_t ;
struct TYPE_4__ {int IStream_iface; TYPE_1__* buf; } ;
struct TYPE_3__ {scalar_t__ file; scalar_t__ hres; } ;
typedef TYPE_2__ ProtocolStream ;
typedef int HRESULT ;
typedef int DWORD ;


 int BINDF_ASYNCHRONOUS ;
 int INET_E_DATA_NOT_AVAILABLE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IStream_AddRef (int *) ;
 scalar_t__ S_FALSE ;
 int S_OK ;

__attribute__((used)) static HRESULT stgmed_stream_get_result(stgmed_obj_t *obj, DWORD bindf, void **result)
{
    ProtocolStream *stream = (ProtocolStream*)obj;

    if(!(bindf & BINDF_ASYNCHRONOUS) && stream->buf->file == INVALID_HANDLE_VALUE
       && stream->buf->hres != S_FALSE)
        return INET_E_DATA_NOT_AVAILABLE;

    IStream_AddRef(&stream->IStream_iface);
    *result = &stream->IStream_iface;
    return S_OK;
}
