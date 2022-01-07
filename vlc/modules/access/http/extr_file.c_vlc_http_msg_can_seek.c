
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_msg {int dummy; } ;


 int vlc_http_msg_get_status (struct vlc_http_msg const*) ;
 int * vlc_http_msg_get_token (struct vlc_http_msg const*,char*,char*) ;

__attribute__((used)) static bool vlc_http_msg_can_seek(const struct vlc_http_msg *resp)
{
    int status = vlc_http_msg_get_status(resp);
    if (status == 206 || status == 416)
        return 1;

    return vlc_http_msg_get_token(resp, "Accept-Ranges", "bytes") != ((void*)0);
}
