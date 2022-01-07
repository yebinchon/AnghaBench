
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xml_encoding ;
struct TYPE_3__ {scalar_t__ utf16_total; int blocks; int encoded; int code_page; } ;
typedef TYPE_1__ output_buffer ;
typedef scalar_t__ HRESULT ;


 scalar_t__ S_OK ;
 scalar_t__ get_code_page (int ,int *) ;
 scalar_t__ init_encoded_buffer (int *) ;
 int list_init (int *) ;

__attribute__((used)) static HRESULT init_output_buffer(xml_encoding encoding, output_buffer *buffer)
{
    HRESULT hr;

    hr = get_code_page(encoding, &buffer->code_page);
    if (hr != S_OK)
        return hr;

    hr = init_encoded_buffer(&buffer->encoded);
    if (hr != S_OK)
        return hr;

    list_init(&buffer->blocks);
    buffer->utf16_total = 0;

    return S_OK;
}
