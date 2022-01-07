
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlreader ;
typedef scalar_t__ xml_encoding ;
struct TYPE_3__ {char* str; int len; int start; } ;
typedef TYPE_1__ strval ;
typedef char WCHAR ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int ) ;
 int WC_E_ENCNAME ;
 scalar_t__ XmlEncoding_Unknown ;
 int debugstr_wn (char*,int) ;
 scalar_t__ is_wchar_encname (char) ;
 scalar_t__ parse_encoding_name (char*,int) ;
 int reader_get_cur (int *) ;
 char* reader_get_ptr (int *) ;
 int reader_skipn (int *,int) ;

__attribute__((used)) static HRESULT reader_parse_encname(xmlreader *reader, strval *val)
{
    WCHAR *start = reader_get_ptr(reader), *ptr;
    xml_encoding enc;
    int len;

    if ((*start < 'A' || *start > 'Z') && (*start < 'a' || *start > 'z'))
        return WC_E_ENCNAME;

    val->start = reader_get_cur(reader);

    ptr = start;
    while (is_wchar_encname(*++ptr))
        ;

    len = ptr - start;
    enc = parse_encoding_name(start, len);
    TRACE("encoding name %s\n", debugstr_wn(start, len));
    val->str = start;
    val->len = len;

    if (enc == XmlEncoding_Unknown)
        return WC_E_ENCNAME;


    reader_skipn(reader, len);
    return S_OK;
}
