
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct reader_position {int dummy; } ;
struct TYPE_9__ {struct reader_position position; } ;
typedef TYPE_1__ xmlreader ;
typedef int strval ;
typedef char WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_FALSE ;
 int S_OK ;
 int WC_E_WHITESPACE ;
 int reader_add_attr (TYPE_1__*,int *,int *,int *,int *,struct reader_position*,int ) ;
 int reader_cmp (TYPE_1__*,char*) ;
 int reader_init_cstrvalue (char*,int ,int *) ;
 int reader_parse_pub_literal (TYPE_1__*,int *) ;
 int reader_parse_sys_literal (TYPE_1__*,int *) ;
 int reader_skipn (TYPE_1__*,int) ;
 int reader_skipspaces (TYPE_1__*) ;
 int strlenW (char*) ;

__attribute__((used)) static HRESULT reader_parse_externalid(xmlreader *reader)
{
    static WCHAR systemW[] = {'S','Y','S','T','E','M',0};
    static WCHAR publicW[] = {'P','U','B','L','I','C',0};
    struct reader_position position = reader->position;
    strval name, sys;
    HRESULT hr;
    int cnt;

    if (!reader_cmp(reader, publicW)) {
        strval pub;


        reader_skipn(reader, 6);
        cnt = reader_skipspaces(reader);
        if (!cnt) return WC_E_WHITESPACE;

        hr = reader_parse_pub_literal(reader, &pub);
        if (FAILED(hr)) return hr;

        reader_init_cstrvalue(publicW, strlenW(publicW), &name);
        hr = reader_add_attr(reader, ((void*)0), &name, ((void*)0), &pub, &position, 0);
        if (FAILED(hr)) return hr;

        cnt = reader_skipspaces(reader);
        if (!cnt) return S_OK;


        hr = reader_parse_sys_literal(reader, &sys);
        if (FAILED(hr)) return S_OK;

        reader_init_cstrvalue(systemW, strlenW(systemW), &name);
        hr = reader_add_attr(reader, ((void*)0), &name, ((void*)0), &sys, &position, 0);
        if (FAILED(hr)) return hr;

        return S_OK;
    } else if (!reader_cmp(reader, systemW)) {

        reader_skipn(reader, 6);
        cnt = reader_skipspaces(reader);
        if (!cnt) return WC_E_WHITESPACE;

        hr = reader_parse_sys_literal(reader, &sys);
        if (FAILED(hr)) return hr;

        reader_init_cstrvalue(systemW, strlenW(systemW), &name);
        return reader_add_attr(reader, ((void*)0), &name, ((void*)0), &sys, &position, 0);
    }

    return S_FALSE;
}
