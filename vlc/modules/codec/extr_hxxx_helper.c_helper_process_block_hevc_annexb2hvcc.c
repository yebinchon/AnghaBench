
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hxxx_helper {int i_nal_length_size; } ;
typedef int block_t ;


 int * helper_process_block_hevc_annexb (struct hxxx_helper*,int *,int*) ;
 int * hxxx_AnnexB_to_xVC (int *,int ) ;

__attribute__((used)) static block_t *
helper_process_block_hevc_annexb2hvcc(struct hxxx_helper *hh, block_t *p_block,
                                      bool *p_config_changed)
{
    p_block = helper_process_block_hevc_annexb(hh, p_block, p_config_changed);
    return p_block ? hxxx_AnnexB_to_xVC(p_block, hh->i_nal_length_size) : ((void*)0);
}
