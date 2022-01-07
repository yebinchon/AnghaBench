
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vlc_http_resource {int * response; } ;
struct vlc_http_file {scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__ i_buffer; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* vlc_http_error ;
 scalar_t__ vlc_http_file_seek (struct vlc_http_resource*,scalar_t__) ;
 scalar_t__ vlc_http_msg_can_seek (int *) ;
 scalar_t__ vlc_http_msg_get_file_size (int *) ;
 TYPE_1__* vlc_http_res_read (struct vlc_http_resource*) ;

block_t *vlc_http_file_read(struct vlc_http_resource *res)
{
    struct vlc_http_file *file = (struct vlc_http_file *)res;
    block_t *block = vlc_http_res_read(res);

    if (block == vlc_http_error)
    {
        if (res->response != ((void*)0)
         && vlc_http_msg_can_seek(res->response)
         && file->offset < vlc_http_msg_get_file_size(res->response)
         && vlc_http_file_seek(res, file->offset) == 0)
            block = vlc_http_res_read(res);

        if (block == vlc_http_error)
            return ((void*)0);
    }

    if (block == ((void*)0))
        return ((void*)0);

    file->offset += block->i_buffer;
    return block;
}
