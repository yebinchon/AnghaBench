
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ xmlreaderinput ;
typedef int xml_encoding ;
typedef int utf8bom ;
typedef int utf16lebom ;
struct TYPE_9__ {int written; int cur; scalar_t__ data; } ;
typedef TYPE_3__ encoded_buffer ;
typedef char WCHAR ;
struct TYPE_7__ {TYPE_3__ encoded; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int MX_E_INPUTEND ;
 int S_OK ;
 int XmlEncoding_UTF16 ;
 int XmlEncoding_UTF8 ;
 int XmlEncoding_Unknown ;
 scalar_t__ is_namestartchar (char) ;
 int memcmp (scalar_t__,char const*,int) ;
 int readerinput_growraw (TYPE_2__*) ;
 scalar_t__ readerinput_is_utf8 (TYPE_2__*) ;

__attribute__((used)) static HRESULT readerinput_detectencoding(xmlreaderinput *readerinput, xml_encoding *enc)
{
    encoded_buffer *buffer = &readerinput->buffer->encoded;
    static const char utf8bom[] = {0xef,0xbb,0xbf};
    static const char utf16lebom[] = {0xff,0xfe};
    WCHAR *ptrW;

    *enc = XmlEncoding_Unknown;

    if (buffer->written <= 3)
    {
        HRESULT hr = readerinput_growraw(readerinput);
        if (FAILED(hr)) return hr;
        if (buffer->written < 3) return MX_E_INPUTEND;
    }

    ptrW = (WCHAR *)buffer->data;


    if (readerinput_is_utf8(readerinput))
        *enc = XmlEncoding_UTF8;
    else if (*ptrW == '<')
    {
        ptrW++;
        if (*ptrW == '?' || *ptrW == '!' || is_namestartchar(*ptrW))
            *enc = XmlEncoding_UTF16;
    }

    else if (!memcmp(buffer->data, utf8bom, sizeof(utf8bom)))
    {
        buffer->cur += sizeof(utf8bom);
        *enc = XmlEncoding_UTF8;
    }
    else if (!memcmp(buffer->data, utf16lebom, sizeof(utf16lebom)))
    {
        buffer->cur += sizeof(utf16lebom);
        *enc = XmlEncoding_UTF16;
    }

    return S_OK;
}
