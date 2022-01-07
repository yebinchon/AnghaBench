
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pending; int stream; TYPE_1__* buffer; } ;
typedef TYPE_2__ xmlreaderinput ;
struct TYPE_8__ {int allocated; int written; int data; } ;
typedef TYPE_3__ encoded_buffer ;
typedef int ULONG ;
struct TYPE_6__ {TYPE_3__ encoded; } ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_PENDING ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ ISequentialStream_Read (int ,int,int,int*) ;
 int TRACE (char*,int,int,int,int,scalar_t__) ;
 int readerinput_realloc (TYPE_2__*,int,int) ;

__attribute__((used)) static HRESULT readerinput_growraw(xmlreaderinput *readerinput)
{
    encoded_buffer *buffer = &readerinput->buffer->encoded;

    ULONG len = buffer->allocated - buffer->written - 4;
    ULONG read;
    HRESULT hr;



    len = (len + 3) & ~3;

    if (buffer->allocated - buffer->written < len)
    {
        buffer->allocated *= 2;
        buffer->data = readerinput_realloc(readerinput, buffer->data, buffer->allocated);
        len = buffer->allocated - buffer->written;
    }

    read = 0;
    hr = ISequentialStream_Read(readerinput->stream, buffer->data + buffer->written, len, &read);
    TRACE("written=%d, alloc=%d, requested=%d, read=%d, ret=0x%08x\n", buffer->written, buffer->allocated, len, read, hr);
    readerinput->pending = hr == E_PENDING;
    if (FAILED(hr)) return hr;
    buffer->written += read;

    return hr;
}
