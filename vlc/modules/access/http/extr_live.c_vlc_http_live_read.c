
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_http_resource {int * response; } ;
struct block_t {int dummy; } ;
typedef struct block_t block_t ;


 struct block_t* vlc_http_error ;
 int vlc_http_msg_destroy (int *) ;
 struct block_t* vlc_http_res_read (struct vlc_http_resource*) ;

block_t *vlc_http_live_read(struct vlc_http_resource *res)
{
    struct block_t *block = vlc_http_res_read(res);
    if (block != ((void*)0) && block != vlc_http_error)
        return block;



    vlc_http_msg_destroy(res->response);
    res->response = ((void*)0);
    return vlc_http_res_read(res);
}
