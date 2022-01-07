
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct output_buffer {int codepage; char* data; int written; } ;
struct TYPE_4__ {struct output_buffer buffer; } ;
typedef TYPE_1__ xmlwriteroutput ;
typedef scalar_t__ WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int WideCharToMultiByte (int,int ,scalar_t__ const*,int,char*,int,int *,int *) ;
 int grow_output_buffer (TYPE_1__*,int) ;
 int memcpy (char*,scalar_t__ const*,int) ;
 int strlenW (scalar_t__ const*) ;

__attribute__((used)) static HRESULT write_output_buffer(xmlwriteroutput *output, const WCHAR *data, int len)
{
    struct output_buffer *buffer = &output->buffer;
    int length;
    HRESULT hr;
    char *ptr;

    if (buffer->codepage == 1200) {

        length = len == -1 ? strlenW(data) : len;
        if (length) {
            length *= sizeof(WCHAR);

            hr = grow_output_buffer(output, length);
            if (FAILED(hr)) return hr;
            ptr = buffer->data + buffer->written;

            memcpy(ptr, data, length);
            buffer->written += length;
            ptr += length;

            *(WCHAR*)ptr = 0;
        }
    }
    else {
        length = WideCharToMultiByte(buffer->codepage, 0, data, len, ((void*)0), 0, ((void*)0), ((void*)0));
        hr = grow_output_buffer(output, length);
        if (FAILED(hr)) return hr;
        ptr = buffer->data + buffer->written;
        length = WideCharToMultiByte(buffer->codepage, 0, data, len, ptr, length, ((void*)0), ((void*)0));
        buffer->written += len == -1 ? length-1 : length;
    }

    return S_OK;
}
