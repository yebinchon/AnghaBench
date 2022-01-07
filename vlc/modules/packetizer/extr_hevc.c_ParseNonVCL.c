
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int decoder_t ;
typedef int block_t ;


 scalar_t__ HEVC_NAL_AUD ;
 scalar_t__ HEVC_NAL_PREF_SEI ;
 scalar_t__ HEVC_NAL_RSV_NVCL41 ;
 scalar_t__ HEVC_NAL_RSV_NVCL44 ;
 scalar_t__ HEVC_NAL_UNSPEC48 ;
 scalar_t__ HEVC_NAL_UNSPEC55 ;
 scalar_t__ HEVC_NAL_VPS ;
 int * ParseAUHead (int *,scalar_t__,int *) ;
 int * ParseAUTail (int *,scalar_t__,int *) ;

__attribute__((used)) static block_t * ParseNonVCL(decoder_t *p_dec, uint8_t i_nal_type, block_t *p_nalb)
{
    block_t *p_ret = ((void*)0);

    if ( (i_nal_type >= HEVC_NAL_VPS && i_nal_type <= HEVC_NAL_AUD) ||
          i_nal_type == HEVC_NAL_PREF_SEI ||
         (i_nal_type >= HEVC_NAL_RSV_NVCL41 && i_nal_type <= HEVC_NAL_RSV_NVCL44) ||
         (i_nal_type >= HEVC_NAL_UNSPEC48 && i_nal_type <= HEVC_NAL_UNSPEC55) )
    {
        p_ret = ParseAUHead(p_dec, i_nal_type, p_nalb);
    }
    else
    {
        p_ret = ParseAUTail(p_dec, i_nal_type, p_nalb);
    }

    return p_ret;
}
