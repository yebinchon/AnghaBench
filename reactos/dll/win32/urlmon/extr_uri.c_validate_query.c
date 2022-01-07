
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int query_len; int const* query; } ;
typedef TYPE_2__ parse_data ;
typedef int WCHAR ;
struct TYPE_11__ {int modified_props; TYPE_1__* uri; int query_len; int * query; } ;
typedef TYPE_3__ UriBuilder ;
struct TYPE_9__ {int query_start; int query_len; int * canon_uri; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int INET_E_INVALID_URL ;
 int S_OK ;
 int TRACE (char*,TYPE_3__ const*,TYPE_2__*,int ,int ,...) ;
 int Uri_HAS_QUERY ;
 int debugstr_wn (int const*,int ) ;
 scalar_t__ parse_query (int const**,TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT validate_query(const UriBuilder *builder, parse_data *data, DWORD flags) {
    const WCHAR *ptr = ((void*)0);
    const WCHAR **pptr;
    DWORD expected_len;

    if(builder->query) {
        ptr = builder->query;
        expected_len = builder->query_len;
    } else if(!(builder->modified_props & Uri_HAS_QUERY) && builder->uri &&
              builder->uri->query_start > -1) {
        ptr = builder->uri->canon_uri+builder->uri->query_start;
        expected_len = builder->uri->query_len;
    }

    if(ptr) {
        const WCHAR *component = ptr;
        pptr = &ptr;

        if(parse_query(pptr, data, flags) && expected_len == data->query_len)
            TRACE("(%p %p %x): Valid query component %s len=%d.\n", builder, data, flags,
                debugstr_wn(data->query, data->query_len), data->query_len);
        else {
            TRACE("(%p %p %x): Invalid query component %s.\n", builder, data, flags,
                debugstr_wn(component, expected_len));
            return INET_E_INVALID_URL;
        }
    }

    return S_OK;
}
