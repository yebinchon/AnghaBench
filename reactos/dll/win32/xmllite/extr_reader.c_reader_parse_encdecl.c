
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct reader_position {int dummy; } ;
struct TYPE_15__ {struct reader_position position; } ;
typedef TYPE_1__ xmlreader ;
struct TYPE_16__ {int len; int start; int str; } ;
typedef TYPE_2__ strval ;
typedef char WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_FALSE ;
 int WC_E_QUOTE ;
 char const* dblquoteW ;
 char const* quoteW ;
 int reader_add_attr (TYPE_1__*,int *,TYPE_2__*,int *,TYPE_2__*,struct reader_position*,int ) ;
 scalar_t__ reader_cmp (TYPE_1__*,char const*) ;
 int reader_get_cur (TYPE_1__*) ;
 int reader_get_ptr (TYPE_1__*) ;
 int reader_parse_encname (TYPE_1__*,TYPE_2__*) ;
 int reader_parse_eq (TYPE_1__*) ;
 int reader_skipn (TYPE_1__*,int) ;
 int reader_skipspaces (TYPE_1__*) ;

__attribute__((used)) static HRESULT reader_parse_encdecl(xmlreader *reader)
{
    static const WCHAR encodingW[] = {'e','n','c','o','d','i','n','g',0};
    struct reader_position position;
    strval name, val;
    HRESULT hr;

    if (!reader_skipspaces(reader)) return S_FALSE;

    position = reader->position;
    if (reader_cmp(reader, encodingW)) return S_FALSE;
    name.str = reader_get_ptr(reader);
    name.start = reader_get_cur(reader);
    name.len = 8;

    reader_skipn(reader, 8);

    hr = reader_parse_eq(reader);
    if (FAILED(hr)) return hr;

    if (reader_cmp(reader, quoteW) && reader_cmp(reader, dblquoteW))
        return WC_E_QUOTE;

    reader_skipn(reader, 1);

    hr = reader_parse_encname(reader, &val);
    if (FAILED(hr)) return hr;

    if (reader_cmp(reader, quoteW) && reader_cmp(reader, dblquoteW))
        return WC_E_QUOTE;


    reader_skipn(reader, 1);

    return reader_add_attr(reader, ((void*)0), &name, ((void*)0), &val, &position, 0);
}
