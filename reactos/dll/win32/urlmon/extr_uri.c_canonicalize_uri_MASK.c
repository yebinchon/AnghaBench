#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {char* uri; int /*<<< orphan*/  scheme_type; } ;
typedef  TYPE_1__ parse_data ;
typedef  char WCHAR ;
struct TYPE_19__ {char* canon_uri; int canon_size; int canon_len; int /*<<< orphan*/  scheme_type; } ;
typedef  TYPE_2__ Uri ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (int) ; 
 char* FUNC9 (char*,int) ; 

__attribute__((used)) static HRESULT FUNC10(const parse_data *data, Uri *uri, DWORD flags) {
    INT len;

    uri->canon_uri = NULL;
    uri->canon_size = uri->canon_len = 0;

    FUNC1("(%p %p %x): beginning to canonicalize URI %s.\n", data, uri, flags, FUNC7(data->uri));

    /* First try to compute the length of the URI. */
    len = FUNC6(data, flags);
    if(len == -1) {
        FUNC0("(%p %p %x): Could not compute the canonicalized length of %s.\n", data, uri, flags,
                FUNC7(data->uri));
        return E_INVALIDARG;
    }

    uri->canon_uri = FUNC8((len+1)*sizeof(WCHAR));
    if(!uri->canon_uri)
        return E_OUTOFMEMORY;

    uri->canon_size = len;
    if(!FUNC5(data, uri, flags, FALSE)) {
        FUNC0("(%p %p %x): Unable to canonicalize the scheme of the URI.\n", data, uri, flags);
        return E_INVALIDARG;
    }
    uri->scheme_type = data->scheme_type;

    if(!FUNC3(data, uri, flags, FALSE)) {
        FUNC0("(%p %p %x): Unable to canonicalize the heirpart of the URI\n", data, uri, flags);
        return E_INVALIDARG;
    }

    if(!FUNC4(data, uri, flags, FALSE)) {
        FUNC0("(%p %p %x): Unable to canonicalize query string of the URI.\n",
            data, uri, flags);
        return E_INVALIDARG;
    }

    if(!FUNC2(data, uri, flags, FALSE)) {
        FUNC0("(%p %p %x): Unable to canonicalize fragment of the URI.\n",
            data, uri, flags);
        return E_INVALIDARG;
    }

    /* There's a possibility we didn't use all the space we allocated
     * earlier.
     */
    if(uri->canon_len < uri->canon_size) {
        /* This happens if the URI is hierarchical and dot
         * segments were removed from its path.
         */
        WCHAR *tmp = FUNC9(uri->canon_uri, (uri->canon_len+1)*sizeof(WCHAR));
        if(!tmp)
            return E_OUTOFMEMORY;

        uri->canon_uri = tmp;
        uri->canon_size = uri->canon_len;
    }

    uri->canon_uri[uri->canon_len] = '\0';
    FUNC1("(%p %p %x): finished canonicalizing the URI. uri=%s\n", data, uri, flags, FUNC7(uri->canon_uri));

    return S_OK;
}