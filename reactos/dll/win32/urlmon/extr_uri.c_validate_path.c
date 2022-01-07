
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int path_len; int const* path; scalar_t__ is_opaque; } ;
typedef TYPE_2__ parse_data ;
typedef int WCHAR ;
struct TYPE_12__ {int path_len; int modified_props; TYPE_1__* uri; int * path; } ;
typedef TYPE_3__ UriBuilder ;
struct TYPE_10__ {int path_start; int path_len; int * canon_uri; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int INET_E_INVALID_URL ;
 int S_OK ;
 int TRACE (char*,TYPE_3__ const*,TYPE_2__*,int,int ,...) ;
 scalar_t__ TRUE ;
 int Uri_HAS_PATH ;
 int debugstr_wn (int const*,int) ;
 scalar_t__ parse_path_hierarchical (int const**,TYPE_2__*,int) ;
 scalar_t__ parse_path_opaque (int const**,TYPE_2__*,int) ;

__attribute__((used)) static HRESULT validate_path(const UriBuilder *builder, parse_data *data, DWORD flags) {
    const WCHAR *ptr = ((void*)0);
    const WCHAR *component;
    const WCHAR **pptr;
    DWORD expected_len;
    BOOL check_len = TRUE;
    BOOL valid = FALSE;

    if(builder->path) {
        ptr = builder->path;
        expected_len = builder->path_len;
    } else if(!(builder->modified_props & Uri_HAS_PATH) &&
              builder->uri && builder->uri->path_start > -1) {
        ptr = builder->uri->canon_uri+builder->uri->path_start;
        expected_len = builder->uri->path_len;
    } else {
        static const WCHAR nullW[] = {0};
        ptr = nullW;
        check_len = FALSE;
        expected_len = -1;
    }

    component = ptr;
    pptr = &ptr;




    valid = data->is_opaque ?
        parse_path_opaque(pptr, data, flags) : parse_path_hierarchical(pptr, data, flags);

    if(!valid || (check_len && expected_len != data->path_len)) {
        TRACE("(%p %p %x): Invalid path component %s.\n", builder, data, flags,
            debugstr_wn(component, expected_len) );
        return INET_E_INVALID_URL;
    }

    TRACE("(%p %p %x): Valid path component %s len=%d.\n", builder, data, flags,
        debugstr_wn(data->path, data->path_len), data->path_len);

    return S_OK;
}
