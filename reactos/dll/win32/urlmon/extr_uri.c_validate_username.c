
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int username_len; int const* username; } ;
typedef TYPE_2__ parse_data ;
typedef int WCHAR ;
struct TYPE_11__ {int username_len; int modified_props; TYPE_1__* uri; int * username; } ;
typedef TYPE_3__ UriBuilder ;
struct TYPE_9__ {int userinfo_start; int userinfo_split; int userinfo_len; int const* canon_uri; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int ALLOW_NULL_TERM_USER_NAME ;
 int INET_E_INVALID_URL ;
 int S_OK ;
 int TRACE (char*,TYPE_3__ const*,TYPE_2__*,int,int ,...) ;
 int Uri_HAS_USER_NAME ;
 int debugstr_wn (int const*,int) ;
 scalar_t__ parse_username (int const**,TYPE_2__*,int,int ) ;

__attribute__((used)) static HRESULT validate_username(const UriBuilder *builder, parse_data *data, DWORD flags) {
    const WCHAR *ptr;
    const WCHAR **pptr;
    DWORD expected_len;

    if(builder->username) {
        ptr = builder->username;
        expected_len = builder->username_len;
    } else if(!(builder->modified_props & Uri_HAS_USER_NAME) && builder->uri &&
              builder->uri->userinfo_start > -1 && builder->uri->userinfo_split != 0) {

        data->username = builder->uri->canon_uri+builder->uri->userinfo_start;
        data->username_len = (builder->uri->userinfo_split > -1) ?
                                        builder->uri->userinfo_split : builder->uri->userinfo_len;
        ptr = ((void*)0);
    } else {
        ptr = ((void*)0);
        expected_len = 0;
    }

    if(ptr) {
        const WCHAR *component = ptr;
        pptr = &ptr;
        if(parse_username(pptr, data, flags, ALLOW_NULL_TERM_USER_NAME) &&
           data->username_len == expected_len)
            TRACE("(%p %p %x): Found valid username component %s len=%d.\n", builder, data, flags,
                debugstr_wn(data->username, data->username_len), data->username_len);
        else {
            TRACE("(%p %p %x): Invalid username component found %s.\n", builder, data, flags,
                debugstr_wn(component, expected_len));
            return INET_E_INVALID_URL;
        }
    }

    return S_OK;
}
