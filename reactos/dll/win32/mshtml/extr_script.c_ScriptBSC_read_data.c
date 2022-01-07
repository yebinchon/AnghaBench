
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int readed; } ;
struct TYPE_4__ {int size; TYPE_2__ bsc; void* buf; } ;
typedef TYPE_1__ ScriptBSC ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int BSCallback ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ S_OK ;
 void* heap_alloc (int) ;
 void* heap_realloc (void*,int) ;
 TYPE_1__* impl_from_BSCallback (int *) ;
 scalar_t__ read_stream (TYPE_2__*,int *,void*,int,int *) ;

__attribute__((used)) static HRESULT ScriptBSC_read_data(BSCallback *bsc, IStream *stream)
{
    ScriptBSC *This = impl_from_BSCallback(bsc);
    DWORD readed;
    HRESULT hres;

    if(!This->buf) {
        This->buf = heap_alloc(128);
        if(!This->buf)
            return E_OUTOFMEMORY;
        This->size = 128;
    }

    do {
        if(This->bsc.readed >= This->size) {
            void *new_buf;
            new_buf = heap_realloc(This->buf, This->size << 1);
            if(!new_buf)
                return E_OUTOFMEMORY;
            This->size <<= 1;
            This->buf = new_buf;
        }

        hres = read_stream(&This->bsc, stream, This->buf+This->bsc.readed, This->size-This->bsc.readed, &readed);
    }while(hres == S_OK);

    return S_OK;
}
