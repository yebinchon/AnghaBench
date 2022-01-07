
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t xml_encoding ;
struct xml_encoding_data {int cp; } ;
typedef int UINT ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int FIXME (char*,size_t) ;
 int S_OK ;
 size_t XmlEncoding_Unknown ;
 struct xml_encoding_data* xml_encoding_map ;

__attribute__((used)) static HRESULT get_code_page(xml_encoding encoding, UINT *cp)
{
    const struct xml_encoding_data *data;

    if (encoding == XmlEncoding_Unknown)
    {
        FIXME("unsupported encoding %d\n", encoding);
        return E_NOTIMPL;
    }

    data = &xml_encoding_map[encoding];
    *cp = data->cp;

    return S_OK;
}
