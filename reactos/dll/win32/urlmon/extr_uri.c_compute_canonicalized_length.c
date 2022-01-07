
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int uri; } ;
typedef TYPE_1__ parse_data ;
struct TYPE_16__ {int canon_len; } ;
typedef TYPE_2__ Uri ;
typedef int DWORD ;


 int ERR (char*,TYPE_1__ const*,int ) ;
 int TRACE (char*,TYPE_1__ const*,int ,int) ;
 int TRUE ;
 int canonicalize_fragment (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_hierpart (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_query (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_scheme (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int debugstr_w (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int compute_canonicalized_length(const parse_data *data, DWORD flags) {
    Uri uri;

    memset(&uri, 0, sizeof(Uri));

    TRACE("(%p %x): Beginning to compute canonicalized length for URI %s\n", data, flags,
            debugstr_w(data->uri));

    if(!canonicalize_scheme(data, &uri, flags, TRUE)) {
        ERR("(%p %x): Failed to compute URI scheme length.\n", data, flags);
        return -1;
    }

    if(!canonicalize_hierpart(data, &uri, flags, TRUE)) {
        ERR("(%p %x): Failed to compute URI hierpart length.\n", data, flags);
        return -1;
    }

    if(!canonicalize_query(data, &uri, flags, TRUE)) {
        ERR("(%p %x): Failed to compute query string length.\n", data, flags);
        return -1;
    }

    if(!canonicalize_fragment(data, &uri, flags, TRUE)) {
        ERR("(%p %x): Failed to compute fragment length.\n", data, flags);
        return -1;
    }

    TRACE("(%p %x): Finished computing canonicalized URI length. length=%d\n", data, flags, uri.canon_len);

    return uri.canon_len;
}
