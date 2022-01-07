
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bomwritten; TYPE_3__* output; int bom; } ;
typedef TYPE_1__ xmlwriter ;
typedef int utf16bom ;
struct output_buffer {scalar_t__ written; scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ encoding; struct output_buffer buffer; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 scalar_t__ TRUE ;
 scalar_t__ XmlEncoding_UTF16 ;
 int grow_output_buffer (TYPE_3__*,int) ;
 int memcpy (scalar_t__,char const*,int) ;

__attribute__((used)) static HRESULT write_encoding_bom(xmlwriter *writer)
{
    if (!writer->bom || writer->bomwritten) return S_OK;

    if (writer->output->encoding == XmlEncoding_UTF16) {
        static const char utf16bom[] = {0xff, 0xfe};
        struct output_buffer *buffer = &writer->output->buffer;
        int len = sizeof(utf16bom);
        HRESULT hr;

        hr = grow_output_buffer(writer->output, len);
        if (FAILED(hr)) return hr;
        memcpy(buffer->data + buffer->written, utf16bom, len);
        buffer->written += len;
    }

    writer->bomwritten = TRUE;
    return S_OK;
}
