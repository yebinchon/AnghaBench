
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_password; int psz_username; int psz_path; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int vlc_http_auth_t ;
typedef int stream_t ;


 int VLC_OBJECT (int *) ;
 int vlc_http_auth_ParseAuthenticationInfoHeader (int ,int *,char const*,char*,int ,int ,int ) ;

__attribute__((used)) static int AuthCheckReply( stream_t *p_access, const char *psz_header,
                           vlc_url_t *p_url, vlc_http_auth_t *p_auth )
{
    return
        vlc_http_auth_ParseAuthenticationInfoHeader( VLC_OBJECT(p_access),
                                                     p_auth,
                                                     psz_header, "",
                                                     p_url->psz_path,
                                                     p_url->psz_username,
                                                     p_url->psz_password );
}
