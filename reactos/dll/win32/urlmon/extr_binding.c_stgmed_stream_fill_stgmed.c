
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int stgmed_obj_t ;
struct TYPE_9__ {TYPE_2__* buf; int IStream_iface; } ;
struct TYPE_6__ {int * pstm; } ;
struct TYPE_8__ {int * pUnkForRelease; TYPE_1__ u; int tymed; } ;
struct TYPE_7__ {int IUnknown_iface; } ;
typedef TYPE_3__ STGMEDIUM ;
typedef TYPE_4__ ProtocolStream ;
typedef int HRESULT ;


 int S_OK ;
 int TYMED_ISTREAM ;

__attribute__((used)) static HRESULT stgmed_stream_fill_stgmed(stgmed_obj_t *obj, STGMEDIUM *stgmed)
{
    ProtocolStream *stream = (ProtocolStream*)obj;

    stgmed->tymed = TYMED_ISTREAM;
    stgmed->u.pstm = &stream->IStream_iface;
    stgmed->pUnkForRelease = &stream->buf->IUnknown_iface;

    return S_OK;
}
