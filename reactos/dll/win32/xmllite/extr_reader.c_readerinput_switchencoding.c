
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ xmlreaderinput ;
typedef scalar_t__ xml_encoding ;
struct TYPE_10__ {int written; scalar_t__ cur; scalar_t__ data; } ;
typedef TYPE_3__ encoded_buffer ;
typedef scalar_t__ WCHAR ;
typedef int UINT ;
struct TYPE_8__ {int code_page; TYPE_3__ utf16; TYPE_3__ encoded; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,scalar_t__*,int) ;
 int TRACE (char*,int ) ;
 scalar_t__ XmlEncoding_UTF16 ;
 int fixup_buffer_cr (TYPE_3__*,int ) ;
 int get_code_page (scalar_t__,int *) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int readerinput_get_convlen (TYPE_2__*) ;
 int readerinput_grow (TYPE_2__*,int) ;

__attribute__((used)) static void readerinput_switchencoding(xmlreaderinput *readerinput, xml_encoding enc)
{
    encoded_buffer *src = &readerinput->buffer->encoded;
    encoded_buffer *dest = &readerinput->buffer->utf16;
    int len, dest_len;
    HRESULT hr;
    WCHAR *ptr;
    UINT cp;

    hr = get_code_page(enc, &cp);
    if (FAILED(hr)) return;

    readerinput->buffer->code_page = cp;
    len = readerinput_get_convlen(readerinput);

    TRACE("switching to cp %d\n", cp);


    if (enc == XmlEncoding_UTF16)
    {
        readerinput_grow(readerinput, len);
        memcpy(dest->data, src->data + src->cur, len);
        dest->written += len*sizeof(WCHAR);
    }
    else
    {
        dest_len = MultiByteToWideChar(cp, 0, src->data + src->cur, len, ((void*)0), 0);
        readerinput_grow(readerinput, dest_len);
        ptr = (WCHAR*)dest->data;
        MultiByteToWideChar(cp, 0, src->data + src->cur, len, ptr, dest_len);
        ptr[dest_len] = 0;
        dest->written += dest_len*sizeof(WCHAR);
    }

    fixup_buffer_cr(dest, 0);
}
