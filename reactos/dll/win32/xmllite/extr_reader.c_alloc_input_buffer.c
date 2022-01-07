
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* buffer; } ;
typedef TYPE_1__ xmlreaderinput ;
struct TYPE_11__ {int utf16; int encoded; int code_page; TYPE_1__* input; } ;
typedef TYPE_2__ input_buffer ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ S_OK ;
 int free_encoded_buffer (TYPE_1__*,int *) ;
 scalar_t__ init_encoded_buffer (TYPE_1__*,int *) ;
 TYPE_2__* readerinput_alloc (TYPE_1__*,int) ;
 int readerinput_free (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static HRESULT alloc_input_buffer(xmlreaderinput *input)
{
    input_buffer *buffer;
    HRESULT hr;

    input->buffer = ((void*)0);

    buffer = readerinput_alloc(input, sizeof(*buffer));
    if (!buffer) return E_OUTOFMEMORY;

    buffer->input = input;
    buffer->code_page = ~0;
    hr = init_encoded_buffer(input, &buffer->utf16);
    if (hr != S_OK) {
        readerinput_free(input, buffer);
        return hr;
    }

    hr = init_encoded_buffer(input, &buffer->encoded);
    if (hr != S_OK) {
        free_encoded_buffer(input, &buffer->utf16);
        readerinput_free(input, buffer);
        return hr;
    }

    input->buffer = buffer;
    return S_OK;
}
