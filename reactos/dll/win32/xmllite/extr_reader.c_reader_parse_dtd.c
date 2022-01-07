
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ dtdmode; int nodetype; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef int HRESULT ;


 scalar_t__ DtdProcessing_Prohibit ;
 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int S_FALSE ;
 int S_OK ;
 int StringValue_LocalName ;
 int StringValue_QualifiedName ;
 int WC_E_DECLDOCTYPE ;
 int WC_E_DTDPROHIBITED ;
 int WC_E_WHITESPACE ;
 int XmlNodeType_DocumentType ;
 scalar_t__ reader_cmp (TYPE_1__*,char const*) ;
 char* reader_get_ptr (TYPE_1__*) ;
 int reader_parse_externalid (TYPE_1__*) ;
 int reader_parse_name (TYPE_1__*,int *) ;
 int reader_set_strvalue (TYPE_1__*,int ,int *) ;
 int reader_shrink (TYPE_1__*) ;
 int reader_skipn (TYPE_1__*,int) ;
 int reader_skipspaces (TYPE_1__*) ;

__attribute__((used)) static HRESULT reader_parse_dtd(xmlreader *reader)
{
    static const WCHAR doctypeW[] = {'<','!','D','O','C','T','Y','P','E',0};
    strval name;
    WCHAR *cur;
    HRESULT hr;


    if (reader_cmp(reader, doctypeW)) return S_FALSE;
    reader_shrink(reader);


    if (reader->dtdmode == DtdProcessing_Prohibit) return WC_E_DTDPROHIBITED;

    reader_skipn(reader, 9);
    if (!reader_skipspaces(reader)) return WC_E_WHITESPACE;


    hr = reader_parse_name(reader, &name);
    if (FAILED(hr)) return WC_E_DECLDOCTYPE;

    reader_skipspaces(reader);

    hr = reader_parse_externalid(reader);
    if (FAILED(hr)) return hr;

    reader_skipspaces(reader);

    cur = reader_get_ptr(reader);
    if (*cur != '>')
    {
        FIXME("internal subset parsing not implemented\n");
        return E_NOTIMPL;
    }


    reader_skipn(reader, 1);

    reader->nodetype = XmlNodeType_DocumentType;
    reader_set_strvalue(reader, StringValue_LocalName, &name);
    reader_set_strvalue(reader, StringValue_QualifiedName, &name);

    return S_OK;
}
