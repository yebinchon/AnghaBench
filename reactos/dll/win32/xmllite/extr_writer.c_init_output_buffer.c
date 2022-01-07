
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct output_buffer {int allocated; unsigned int codepage; scalar_t__ written; int data; } ;
struct TYPE_4__ {int encoding; struct output_buffer buffer; } ;
typedef TYPE_1__ xmlwriteroutput ;
typedef unsigned int UINT ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int WARN (char*) ;
 int get_code_page (int ,unsigned int*) ;
 int memset (int ,int ,int) ;
 int writeroutput_alloc (TYPE_1__*,int const) ;

__attribute__((used)) static HRESULT init_output_buffer(xmlwriteroutput *output)
{
    struct output_buffer *buffer = &output->buffer;
    const int initial_len = 0x2000;
    UINT cp = ~0u;
    HRESULT hr;

    if (FAILED(hr = get_code_page(output->encoding, &cp)))
        WARN("Failed to get code page for specified encoding.\n");

    buffer->data = writeroutput_alloc(output, initial_len);
    if (!buffer->data) return E_OUTOFMEMORY;

    memset(buffer->data, 0, 4);
    buffer->allocated = initial_len;
    buffer->written = 0;
    buffer->codepage = cp;

    return S_OK;
}
