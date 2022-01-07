
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct reader_position {int dummy; } ;
struct TYPE_10__ {struct reader_position position; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int WC_E_QUOTE ;
 int WC_E_WHITESPACE ;
 int WC_E_XMLDECL ;
 char const* dblquoteW ;
 char const* quoteW ;
 int reader_add_attr (TYPE_1__*,int *,int *,int *,int *,struct reader_position*,int ) ;
 scalar_t__ reader_cmp (TYPE_1__*,char const*) ;
 int reader_get_cur (TYPE_1__*) ;
 int reader_init_strvalue (int ,int,int *) ;
 int reader_parse_eq (TYPE_1__*) ;
 int reader_parse_versionnum (TYPE_1__*,int *) ;
 int reader_skipn (TYPE_1__*,int) ;
 int reader_skipspaces (TYPE_1__*) ;

__attribute__((used)) static HRESULT reader_parse_versioninfo(xmlreader *reader)
{
    static const WCHAR versionW[] = {'v','e','r','s','i','o','n',0};
    struct reader_position position;
    strval val, name;
    HRESULT hr;

    if (!reader_skipspaces(reader)) return WC_E_WHITESPACE;

    position = reader->position;
    if (reader_cmp(reader, versionW)) return WC_E_XMLDECL;
    reader_init_strvalue(reader_get_cur(reader), 7, &name);

    reader_skipn(reader, 7);

    hr = reader_parse_eq(reader);
    if (FAILED(hr)) return hr;

    if (reader_cmp(reader, quoteW) && reader_cmp(reader, dblquoteW))
        return WC_E_QUOTE;

    reader_skipn(reader, 1);

    hr = reader_parse_versionnum(reader, &val);
    if (FAILED(hr)) return hr;

    if (reader_cmp(reader, quoteW) && reader_cmp(reader, dblquoteW))
        return WC_E_QUOTE;


    reader_skipn(reader, 1);

    return reader_add_attr(reader, ((void*)0), &name, ((void*)0), &val, &position, 0);
}
