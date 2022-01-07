
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int response; } ;


 char* strdup (char const*) ;
 char* vlc_http_msg_get_header (int ,char*) ;
 int vlc_http_res_get_status (struct vlc_http_resource*) ;

char *vlc_http_res_get_type(struct vlc_http_resource *res)
{
    int status = vlc_http_res_get_status(res);
    if (status < 200 || status >= 300)
        return ((void*)0);

    const char *type = vlc_http_msg_get_header(res->response, "Content-Type");
    return (type != ((void*)0)) ? strdup(type) : ((void*)0);
}
