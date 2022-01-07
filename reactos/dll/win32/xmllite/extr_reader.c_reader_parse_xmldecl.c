
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct reader_position {int dummy; } ;
struct TYPE_11__ {struct reader_position position; } ;
struct TYPE_12__ {TYPE_1__ empty_element; int nodetype; struct reader_position position; } ;
typedef TYPE_2__ xmlreader ;
typedef char WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_FALSE ;
 int S_OK ;
 int StringValue_LocalName ;
 int StringValue_QualifiedName ;
 int WC_E_XMLDECL ;
 int XmlNodeType_XmlDeclaration ;
 scalar_t__ reader_cmp (TYPE_2__*,char const*) ;
 int reader_parse_encdecl (TYPE_2__*) ;
 int reader_parse_sddecl (TYPE_2__*) ;
 int reader_parse_versioninfo (TYPE_2__*) ;
 int reader_set_strvalue (TYPE_2__*,int ,int *) ;
 int reader_skipn (TYPE_2__*,int) ;
 int reader_skipspaces (TYPE_2__*) ;
 int strval_xml ;

__attribute__((used)) static HRESULT reader_parse_xmldecl(xmlreader *reader)
{
    static const WCHAR xmldeclW[] = {'<','?','x','m','l',' ',0};
    static const WCHAR declcloseW[] = {'?','>',0};
    struct reader_position position;
    HRESULT hr;


    if (reader_cmp(reader, xmldeclW))
        return S_FALSE;

    reader_skipn(reader, 2);
    position = reader->position;
    reader_skipn(reader, 3);
    hr = reader_parse_versioninfo(reader);
    if (FAILED(hr))
        return hr;

    hr = reader_parse_encdecl(reader);
    if (FAILED(hr))
        return hr;

    hr = reader_parse_sddecl(reader);
    if (FAILED(hr))
        return hr;

    reader_skipspaces(reader);
    if (reader_cmp(reader, declcloseW))
        return WC_E_XMLDECL;


    reader_skipn(reader, 2);

    reader->nodetype = XmlNodeType_XmlDeclaration;
    reader->empty_element.position = position;
    reader_set_strvalue(reader, StringValue_LocalName, &strval_xml);
    reader_set_strvalue(reader, StringValue_QualifiedName, &strval_xml);

    return S_OK;
}
