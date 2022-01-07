
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int response; } ;
struct block_t {int dummy; } ;


 struct block_t* vlc_http_msg_read (int ) ;
 int vlc_http_res_get_status (struct vlc_http_resource*) ;

struct block_t *vlc_http_res_read(struct vlc_http_resource *res)
{
    int status = vlc_http_res_get_status(res);
    if (status < 200 || status >= 300)
        return ((void*)0);

    return vlc_http_msg_read(res->response);
}
