
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int h264_sequence_parameter_set_t ;
typedef int bo_t ;


 int const PROFILE_H264_HIGH ;
 int const PROFILE_H264_HIGH_10 ;
 int const PROFILE_H264_HIGH_422 ;
 int const PROFILE_H264_HIGH_444 ;
 int const PROFILE_H264_HIGH_444_PREDICTIVE ;
 int const PROFILE_H264_MAIN ;
 int bo_add_16be (int *,size_t) ;
 int bo_add_8 (int *,int const) ;
 int bo_add_mem (int *,size_t,int const*) ;
 int * box_new (char*) ;
 int h264_AnnexB_get_spspps (int const*,size_t,int const**,size_t*,int const**,size_t*,int const**,size_t*) ;
 int * h264_decode_sps (int const*,size_t,int) ;
 scalar_t__ h264_get_chroma_luma (int *,int*,int*,int*) ;
 int h264_release_sps (int *) ;

__attribute__((used)) static bo_t *GetAvcCTag(const uint8_t *p_extra, size_t i_extra)
{
    bo_t *avcC = box_new("avcC");
    if(!avcC)
        return ((void*)0);
    const uint8_t *p_sps, *p_pps, *p_ext;
    size_t i_sps_size, i_pps_size, i_ext_size;

    if(! h264_AnnexB_get_spspps(p_extra, i_extra,
                        &p_sps, &i_sps_size,
                        &p_pps, &i_pps_size,
                        &p_ext, &i_ext_size ) )
    {
        p_sps = p_pps = p_ext = ((void*)0);
        i_sps_size = i_pps_size = i_ext_size = 0;
    }

    bo_add_8(avcC, 1);
    bo_add_8(avcC, i_sps_size > 3 ? p_sps[1] : PROFILE_H264_MAIN);
    bo_add_8(avcC, i_sps_size > 3 ? p_sps[2] : 64);
    bo_add_8(avcC, i_sps_size > 3 ? p_sps[3] : 30);
    bo_add_8(avcC, 0xff);

    bo_add_8(avcC, 0xe0 | (i_sps_size > 0 ? 1 : 0));
    if (i_sps_size > 0) {
        bo_add_16be(avcC, i_sps_size);
        bo_add_mem(avcC, i_sps_size, p_sps);
    }

    bo_add_8(avcC, (i_pps_size > 0 ? 1 : 0));
    if (i_pps_size > 0) {
        bo_add_16be(avcC, i_pps_size);
        bo_add_mem(avcC, i_pps_size, p_pps);
    }

    if( i_sps_size > 3 &&
       (p_sps[1] == PROFILE_H264_HIGH ||
        p_sps[1] == PROFILE_H264_HIGH_10 ||
        p_sps[1] == PROFILE_H264_HIGH_422 ||
        p_sps[1] == PROFILE_H264_HIGH_444 ||
        p_sps[1] == PROFILE_H264_HIGH_444_PREDICTIVE) )
    {
        h264_sequence_parameter_set_t *p_spsdata = h264_decode_sps( p_sps, i_sps_size, 1 );
        if( p_spsdata )
        {
            uint8_t data[3];
            if( h264_get_chroma_luma( p_spsdata, &data[0], &data[1], &data[2]) )
            {
                bo_add_8(avcC, 0xFC | data[0]);
                bo_add_8(avcC, 0xF8 | (data[1] - 8));
                bo_add_8(avcC, 0xF8 | (data[2] - 8));
                bo_add_8(avcC, (i_ext_size > 0 ? 1 : 0));
                if (i_ext_size > 0) {
                    bo_add_16be(avcC, i_ext_size);
                    bo_add_mem(avcC, i_ext_size, p_ext);
                }
            }
            h264_release_sps( p_spsdata );
        }
    }

    return avcC;
}
