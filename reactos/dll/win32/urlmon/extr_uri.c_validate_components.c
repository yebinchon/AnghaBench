
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ scheme_type; int is_opaque; int has_port; int host; int password; int username; int is_relative; } ;
typedef TYPE_2__ parse_data ;
struct TYPE_25__ {TYPE_1__* uri; scalar_t__ username; scalar_t__ password; } ;
typedef TYPE_3__ UriBuilder ;
struct TYPE_23__ {int userinfo_split; int userinfo_start; } ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int INET_E_INVALID_URL ;
 int S_OK ;
 int TRACE (char*,TYPE_3__ const*,TYPE_2__*,int ) ;
 scalar_t__ URL_SCHEME_FILE ;
 int memset (TYPE_2__*,int ,int) ;
 int setup_port (TYPE_3__ const*,TYPE_2__*,int ) ;
 int validate_fragment (TYPE_3__ const*,TYPE_2__*,int ) ;
 int validate_host (TYPE_3__ const*,TYPE_2__*,int ) ;
 int validate_path (TYPE_3__ const*,TYPE_2__*,int ) ;
 int validate_query (TYPE_3__ const*,TYPE_2__*,int ) ;
 int validate_scheme_name (TYPE_3__ const*,TYPE_2__*,int ) ;
 int validate_userinfo (TYPE_3__ const*,TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT validate_components(const UriBuilder *builder, parse_data *data, DWORD flags) {
    HRESULT hr;

    memset(data, 0, sizeof(parse_data));

    TRACE("(%p %p %x): Beginning to validate builder components.\n", builder, data, flags);

    hr = validate_scheme_name(builder, data, flags);
    if(FAILED(hr))
        return hr;


    if(data->scheme_type == URL_SCHEME_FILE) {
        if((builder->password || (builder->uri && builder->uri->userinfo_split > -1)) ||
           (builder->username || (builder->uri && builder->uri->userinfo_start > -1))) {
            TRACE("(%p %p %x): File schemes can't contain a username or password.\n",
                builder, data, flags);
            return INET_E_INVALID_URL;
        }
    }

    hr = validate_userinfo(builder, data, flags);
    if(FAILED(hr))
        return hr;

    hr = validate_host(builder, data, flags);
    if(FAILED(hr))
        return hr;

    setup_port(builder, data, flags);


    if(!data->is_relative)
        data->is_opaque = !data->username && !data->password && !data->host && !data->has_port
            && data->scheme_type != URL_SCHEME_FILE;
    else
        data->is_opaque = !data->host && !data->has_port;

    hr = validate_path(builder, data, flags);
    if(FAILED(hr))
        return hr;

    hr = validate_query(builder, data, flags);
    if(FAILED(hr))
        return hr;

    hr = validate_fragment(builder, data, flags);
    if(FAILED(hr))
        return hr;

    TRACE("(%p %p %x): Finished validating builder components.\n", builder, data, flags);

    return S_OK;
}
