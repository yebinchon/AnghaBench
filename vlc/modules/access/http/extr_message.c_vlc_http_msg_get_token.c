
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 char const* vlc_http_get_token (int ,char const*) ;
 int vlc_http_msg_get_header (struct vlc_http_msg const*,char const*) ;

const char *vlc_http_msg_get_token(const struct vlc_http_msg *msg,
                                   const char *field, const char *token)
{
    return vlc_http_get_token(vlc_http_msg_get_header(msg, field), token);
}
