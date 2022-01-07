
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct hxxx_helper {int i_nal_length_size; } ;
struct TYPE_5__ {int i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_SUCCESS ;
 int block_Release (TYPE_1__*) ;
 int h264_helper_parse_nal (struct hxxx_helper*,int ,int ,int ,int*) ;

__attribute__((used)) static block_t *
helper_process_block_h264_avcc(struct hxxx_helper *hh, block_t *p_block,
                               bool *p_config_changed)
{
    if (p_config_changed != ((void*)0))
    {
        int i_ret = h264_helper_parse_nal(hh, p_block->p_buffer,
                                          p_block->i_buffer,
                                          hh->i_nal_length_size,
                                          p_config_changed);
        if (i_ret != VLC_SUCCESS)
        {
            block_Release(p_block);
            return ((void*)0);
        }
    }
    return p_block;
}
