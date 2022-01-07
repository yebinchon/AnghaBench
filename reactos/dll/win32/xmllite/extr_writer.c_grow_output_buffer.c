
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct output_buffer {int allocated; int written; char* data; } ;
struct TYPE_4__ {struct output_buffer buffer; } ;
typedef TYPE_1__ xmlwriteroutput ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int max (int,int) ;
 char* writeroutput_realloc (TYPE_1__*,char*,int) ;

__attribute__((used)) static HRESULT grow_output_buffer(xmlwriteroutput *output, int length)
{
    struct output_buffer *buffer = &output->buffer;

    if (buffer->allocated < buffer->written + length + 4) {
        int grown_size = max(2*buffer->allocated, buffer->allocated + length);
        char *ptr = writeroutput_realloc(output, buffer->data, grown_size);
        if (!ptr) return E_OUTOFMEMORY;
        buffer->data = ptr;
        buffer->allocated = grown_size;
    }

    return S_OK;
}
