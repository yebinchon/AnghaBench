
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hxxx_helper {int i_nal_length_size; int b_is_xvcC; int p_obj; int b_need_xvcC; } ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int h264_helper_parse_nal (struct hxxx_helper*,void const*,size_t,int ,int*) ;
 scalar_t__ h264_isavcC (void const*,size_t) ;
 int helper_nal_length_valid (struct hxxx_helper*) ;
 int helper_process_avcC_h264 (struct hxxx_helper*,void const*,size_t) ;
 scalar_t__ hxxx_extra_isannexb (void const*,size_t) ;
 int msg_Dbg (int ,char*) ;

__attribute__((used)) static int
h264_helper_set_extra(struct hxxx_helper *hh, const void *p_extra,
                      size_t i_extra)
{
    if (h264_isavcC(p_extra, i_extra))
    {
        hh->i_nal_length_size = (((uint8_t*)p_extra)[4] & 0x03) + 1;
        if (!helper_nal_length_valid(hh))
            return VLC_EGENERIC;
        hh->b_is_xvcC = 1;







        if (!hh->b_need_xvcC && hh->i_nal_length_size != 4)
        {
            msg_Dbg(hh->p_obj, "nal_length_size is too small");
            return VLC_EGENERIC;
        }

        return helper_process_avcC_h264(hh, p_extra, i_extra);
    }
    else if (hxxx_extra_isannexb(p_extra, i_extra))
    {
        hh->i_nal_length_size = 4;
        bool unused;
        return i_extra == 0 ? VLC_SUCCESS :
               h264_helper_parse_nal(hh, p_extra, i_extra, 0, &unused);
    }
    else
        return VLC_EGENERIC;
}
