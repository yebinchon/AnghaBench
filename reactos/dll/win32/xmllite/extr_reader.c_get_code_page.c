
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t xml_encoding ;
typedef int UINT ;
struct TYPE_2__ {int cp; } ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,size_t) ;
 int S_OK ;
 size_t XmlEncoding_Unknown ;
 TYPE_1__* xml_encoding_map ;

HRESULT get_code_page(xml_encoding encoding, UINT *cp)
{
    if (encoding == XmlEncoding_Unknown)
    {
        FIXME("unsupported encoding %d\n", encoding);
        return E_NOTIMPL;
    }

    *cp = xml_encoding_map[encoding].cp;

    return S_OK;
}
