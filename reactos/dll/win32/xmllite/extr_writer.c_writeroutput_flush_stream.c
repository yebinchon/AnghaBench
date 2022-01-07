
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct output_buffer {scalar_t__ written; scalar_t__ data; } ;
struct TYPE_3__ {int stream; struct output_buffer buffer; } ;
typedef TYPE_1__ xmlwriteroutput ;
typedef scalar_t__ ULONG ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int ISequentialStream_Write (int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int S_OK ;
 int WARN (char*,int ) ;

__attribute__((used)) static HRESULT writeroutput_flush_stream(xmlwriteroutput *output)
{
    struct output_buffer *buffer;
    ULONG written, offset = 0;
    HRESULT hr;

    if (!output || !output->stream)
        return S_OK;

    buffer = &output->buffer;


    do {
        written = 0;
        hr = ISequentialStream_Write(output->stream, buffer->data + offset, buffer->written, &written);
        if (FAILED(hr)) {
            WARN("write to stream failed (0x%08x)\n", hr);
            buffer->written = 0;
            return hr;
        }

        offset += written;
        buffer->written -= written;
    } while (buffer->written > 0);

    return S_OK;
}
