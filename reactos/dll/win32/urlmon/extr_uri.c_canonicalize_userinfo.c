
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int password; int username; } ;
typedef TYPE_1__ parse_data ;
struct TYPE_12__ {int userinfo_start; int userinfo_split; size_t userinfo_len; size_t canon_len; char* canon_uri; } ;
typedef TYPE_2__ Uri ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,TYPE_1__ const*,TYPE_2__*,int ,int ,size_t,int ,int,size_t) ;
 int TRUE ;
 int canonicalize_password (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_username (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int debugstr_wn (char*,size_t) ;

__attribute__((used)) static BOOL canonicalize_userinfo(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    uri->userinfo_start = uri->userinfo_split = -1;
    uri->userinfo_len = 0;

    if(!data->username && !data->password)

        return TRUE;

    if(!canonicalize_username(data, uri, flags, computeOnly))
        return FALSE;

    if(!canonicalize_password(data, uri, flags, computeOnly))
        return FALSE;

    uri->userinfo_len = uri->canon_len - uri->userinfo_start;
    if(!computeOnly)
        TRACE("(%p %p %x %d): Canonicalized userinfo, userinfo_start=%d, userinfo=%s, userinfo_split=%d userinfo_len=%d.\n",
                data, uri, flags, computeOnly, uri->userinfo_start, debugstr_wn(uri->canon_uri + uri->userinfo_start, uri->userinfo_len),
                uri->userinfo_split, uri->userinfo_len);


    if(!computeOnly)
        uri->canon_uri[uri->canon_len] = '@';
    ++uri->canon_len;

    return TRUE;
}
