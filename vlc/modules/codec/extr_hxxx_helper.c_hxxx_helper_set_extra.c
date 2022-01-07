
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hxxx_helper {int i_codec; void* pf_process_block; int b_need_xvcC; int b_is_xvcC; } ;




 int VLC_SUCCESS ;
 int h264_helper_set_extra (struct hxxx_helper*,void const*,size_t) ;
 void* helper_process_block_h264_annexb ;
 void* helper_process_block_h264_annexb2avcc ;
 void* helper_process_block_h264_avcc ;
 void* helper_process_block_hevc_annexb ;
 void* helper_process_block_hevc_annexb2hvcc ;
 void* helper_process_block_hevc_hvcc ;
 void* helper_process_block_xvcc2annexb ;
 int hevc_helper_set_extra (struct hxxx_helper*,void const*,size_t) ;
 int vlc_assert_unreachable () ;

int
hxxx_helper_set_extra(struct hxxx_helper *hh, const void *p_extra,
                      size_t i_extra)
{
    int i_ret;
    switch (hh->i_codec)
    {
        case 129:
            i_ret = h264_helper_set_extra(hh, p_extra, i_extra);
            break;
        case 128:
            i_ret = hevc_helper_set_extra(hh, p_extra, i_extra);
            break;
        default:
            vlc_assert_unreachable();
    }
    if (i_ret != VLC_SUCCESS)
        return i_ret;

    switch (hh->i_codec)
    {
        case 129:
            if (hh->b_is_xvcC)
            {
                if (hh->b_need_xvcC)
                    hh->pf_process_block = helper_process_block_h264_avcc;
                else
                    hh->pf_process_block = helper_process_block_xvcc2annexb;
            }
            else
            {
                if (hh->b_need_xvcC)
                    hh->pf_process_block = helper_process_block_h264_annexb2avcc;
                else
                    hh->pf_process_block = helper_process_block_h264_annexb;
            }
            break;
        case 128:
            if (hh->b_is_xvcC)
            {
                if (hh->b_need_xvcC)
                    hh->pf_process_block = helper_process_block_hevc_hvcc;
                else
                    hh->pf_process_block = helper_process_block_xvcc2annexb;
            }
            else
            {
                if (hh->b_need_xvcC)
                    hh->pf_process_block = helper_process_block_hevc_annexb2hvcc;
                else
                    hh->pf_process_block = helper_process_block_hevc_annexb;
            }
            break;
        default:
            vlc_assert_unreachable();
    }
    return VLC_SUCCESS;;
}
