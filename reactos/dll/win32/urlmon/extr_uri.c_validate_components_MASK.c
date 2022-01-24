#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ scheme_type; int is_opaque; int /*<<< orphan*/  has_port; int /*<<< orphan*/  host; int /*<<< orphan*/  password; int /*<<< orphan*/  username; int /*<<< orphan*/  is_relative; } ;
typedef  TYPE_2__ parse_data ;
struct TYPE_25__ {TYPE_1__* uri; scalar_t__ username; scalar_t__ password; } ;
typedef  TYPE_3__ UriBuilder ;
struct TYPE_23__ {int userinfo_split; int userinfo_start; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INET_E_INVALID_URL ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ URL_SCHEME_FILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC10(const UriBuilder *builder, parse_data *data, DWORD flags) {
    HRESULT hr;

    FUNC2(data, 0, sizeof(parse_data));

    FUNC1("(%p %p %x): Beginning to validate builder components.\n", builder, data, flags);

    hr = FUNC8(builder, data, flags);
    if(FUNC0(hr))
        return hr;

    /* Extra validation for file schemes. */
    if(data->scheme_type == URL_SCHEME_FILE) {
        if((builder->password || (builder->uri && builder->uri->userinfo_split > -1)) ||
           (builder->username || (builder->uri && builder->uri->userinfo_start > -1))) {
            FUNC1("(%p %p %x): File schemes can't contain a username or password.\n",
                builder, data, flags);
            return INET_E_INVALID_URL;
        }
    }

    hr = FUNC9(builder, data, flags);
    if(FUNC0(hr))
        return hr;

    hr = FUNC5(builder, data, flags);
    if(FUNC0(hr))
        return hr;

    FUNC3(builder, data, flags);

    /* The URI is opaque if it doesn't have an authority component. */
    if(!data->is_relative)
        data->is_opaque = !data->username && !data->password && !data->host && !data->has_port
            && data->scheme_type != URL_SCHEME_FILE;
    else
        data->is_opaque = !data->host && !data->has_port;

    hr = FUNC6(builder, data, flags);
    if(FUNC0(hr))
        return hr;

    hr = FUNC7(builder, data, flags);
    if(FUNC0(hr))
        return hr;

    hr = FUNC4(builder, data, flags);
    if(FUNC0(hr))
        return hr;

    FUNC1("(%p %p %x): Finished validating builder components.\n", builder, data, flags);

    return S_OK;
}