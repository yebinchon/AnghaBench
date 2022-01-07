
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ username; scalar_t__ password; scalar_t__ is_relative; } ;
typedef TYPE_1__ parse_data ;
struct TYPE_12__ {int authority_start; int canon_len; int authority_len; int host_start; } ;
typedef TYPE_2__ Uri ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int canonicalize_host (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_port (TYPE_1__ const*,TYPE_2__*,int ,int ) ;
 int canonicalize_userinfo (TYPE_1__ const*,TYPE_2__*,int ,int ) ;

__attribute__((used)) static BOOL canonicalize_authority(const parse_data *data, Uri *uri, DWORD flags, BOOL computeOnly) {
    uri->authority_start = uri->canon_len;
    uri->authority_len = 0;

    if(!canonicalize_userinfo(data, uri, flags, computeOnly))
        return FALSE;

    if(!canonicalize_host(data, uri, flags, computeOnly))
        return FALSE;

    if(!canonicalize_port(data, uri, flags, computeOnly))
        return FALSE;

    if(uri->host_start != -1 || (data->is_relative && (data->password || data->username)))
        uri->authority_len = uri->canon_len - uri->authority_start;
    else
        uri->authority_start = -1;

    return TRUE;
}
