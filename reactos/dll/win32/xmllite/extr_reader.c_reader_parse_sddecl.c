
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
typedef int UINT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_FALSE ;
 int TRACE (char*,int ) ;
 int WC_E_QUOTE ;
 int WC_E_XMLDECL ;
 char const* dblquoteW ;
 int debug_strval (TYPE_1__*,int *) ;
 char const* quoteW ;
 int reader_add_attr (TYPE_1__*,int *,int *,int *,int *,struct reader_position*,int ) ;
 scalar_t__ reader_cmp (TYPE_1__*,char const*) ;
 int reader_get_cur (TYPE_1__*) ;
 int reader_init_strvalue (int,int,int *) ;
 int reader_parse_eq (TYPE_1__*) ;
 int reader_skipn (TYPE_1__*,int) ;
 int reader_skipspaces (TYPE_1__*) ;

__attribute__((used)) static HRESULT reader_parse_sddecl(xmlreader *reader)
{
    static const WCHAR standaloneW[] = {'s','t','a','n','d','a','l','o','n','e',0};
    static const WCHAR yesW[] = {'y','e','s',0};
    static const WCHAR noW[] = {'n','o',0};
    struct reader_position position;
    strval name, val;
    UINT start;
    HRESULT hr;

    if (!reader_skipspaces(reader)) return S_FALSE;

    position = reader->position;
    if (reader_cmp(reader, standaloneW)) return S_FALSE;
    reader_init_strvalue(reader_get_cur(reader), 10, &name);

    reader_skipn(reader, 10);

    hr = reader_parse_eq(reader);
    if (FAILED(hr)) return hr;

    if (reader_cmp(reader, quoteW) && reader_cmp(reader, dblquoteW))
        return WC_E_QUOTE;

    reader_skipn(reader, 1);

    if (reader_cmp(reader, yesW) && reader_cmp(reader, noW))
        return WC_E_XMLDECL;

    start = reader_get_cur(reader);

    reader_skipn(reader, reader_cmp(reader, yesW) ? 2 : 3);
    reader_init_strvalue(start, reader_get_cur(reader)-start, &val);
    TRACE("standalone=%s\n", debug_strval(reader, &val));

    if (reader_cmp(reader, quoteW) && reader_cmp(reader, dblquoteW))
        return WC_E_QUOTE;

    reader_skipn(reader, 1);

    return reader_add_attr(reader, ((void*)0), &name, ((void*)0), &val, &position, 0);
}
