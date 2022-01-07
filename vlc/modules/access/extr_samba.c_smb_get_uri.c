
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PSZ_NAME_OR_NULL ;
 int PSZ_SHARE_PATH_OR_NULL ;
 int asprintf (char**,char*,char const*,char*,char const*,...) ;
 int assert (char const*) ;

__attribute__((used)) static char *smb_get_uri(
                       const char *psz_domain,
                       const char *psz_user, const char *psz_pwd,
                       const char *psz_server, const char *psz_share_path,
                       const char *psz_name)
{
    char *uri;

    assert(psz_server);


    if( (psz_user
        ? asprintf( &uri, "smb://%s%s%s%s%s@%s%s%s%s",
                         psz_domain ? psz_domain : "", psz_domain ? ";" : "",
                         psz_user, psz_pwd ? ":" : "",
                         psz_pwd ? psz_pwd : "", psz_server,
                         psz_share_path ? psz_share_path : "", psz_name ? "/" : "", psz_name ? psz_name : "" )
        : asprintf( &uri, "smb://%s%s%s%s", psz_server,
                         psz_share_path ? psz_share_path : "", psz_name ? "/" : "", psz_name ? psz_name : "" )) == -1 )
        uri = ((void*)0);
    return uri;
}
