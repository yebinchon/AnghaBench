
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {char* uri; int scheme_type; } ;
typedef TYPE_1__ parse_data ;
typedef char WCHAR ;
struct TYPE_19__ {char* canon_uri; int canon_size; int canon_len; int scheme_type; } ;
typedef TYPE_2__ Uri ;
typedef int INT ;
typedef int HRESULT ;
typedef int DWORD ;


 int ERR (char*,TYPE_1__ const*,TYPE_2__*,int ,...) ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int S_OK ;
 int TRACE (char*,TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_fragment (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_hierpart (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_query (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_scheme (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int compute_canonicalized_length (TYPE_1__ const*,int ) ;
 int debugstr_w (char*) ;
 char* heap_alloc (int) ;
 char* heap_realloc (char*,int) ;

__attribute__((used)) static HRESULT canonicalize_uri(const parse_data *data, Uri *uri, DWORD flags) {
    INT len;

    uri->canon_uri = ((void*)0);
    uri->canon_size = uri->canon_len = 0;

    TRACE("(%p %p %x): beginning to canonicalize URI %s.\n", data, uri, flags, debugstr_w(data->uri));


    len = compute_canonicalized_length(data, flags);
    if(len == -1) {
        ERR("(%p %p %x): Could not compute the canonicalized length of %s.\n", data, uri, flags,
                debugstr_w(data->uri));
        return E_INVALIDARG;
    }

    uri->canon_uri = heap_alloc((len+1)*sizeof(WCHAR));
    if(!uri->canon_uri)
        return E_OUTOFMEMORY;

    uri->canon_size = len;
    if(!canonicalize_scheme(data, uri, flags, FALSE)) {
        ERR("(%p %p %x): Unable to canonicalize the scheme of the URI.\n", data, uri, flags);
        return E_INVALIDARG;
    }
    uri->scheme_type = data->scheme_type;

    if(!canonicalize_hierpart(data, uri, flags, FALSE)) {
        ERR("(%p %p %x): Unable to canonicalize the heirpart of the URI\n", data, uri, flags);
        return E_INVALIDARG;
    }

    if(!canonicalize_query(data, uri, flags, FALSE)) {
        ERR("(%p %p %x): Unable to canonicalize query string of the URI.\n",
            data, uri, flags);
        return E_INVALIDARG;
    }

    if(!canonicalize_fragment(data, uri, flags, FALSE)) {
        ERR("(%p %p %x): Unable to canonicalize fragment of the URI.\n",
            data, uri, flags);
        return E_INVALIDARG;
    }




    if(uri->canon_len < uri->canon_size) {



        WCHAR *tmp = heap_realloc(uri->canon_uri, (uri->canon_len+1)*sizeof(WCHAR));
        if(!tmp)
            return E_OUTOFMEMORY;

        uri->canon_uri = tmp;
        uri->canon_size = uri->canon_len;
    }

    uri->canon_uri[uri->canon_len] = '\0';
    TRACE("(%p %p %x): finished canonicalizing the URI. uri=%s\n", data, uri, flags, debugstr_w(uri->canon_uri));

    return S_OK;
}
