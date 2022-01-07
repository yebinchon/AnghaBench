
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;




 int VLC_CODEC_UNKNOWN ;
 int vlc_fourcc_GetCodec (unsigned int,int ) ;
 int wf_tag_to_fourcc (int ,int *,int *) ;

vlc_fourcc_t AVI_FourccGetCodec( unsigned int i_cat, vlc_fourcc_t i_codec )
{
    switch( i_cat )
    {
        case 129:
            wf_tag_to_fourcc( i_codec, &i_codec, ((void*)0) );
            return i_codec;
        case 128:
            return vlc_fourcc_GetCodec( i_cat, i_codec );
        default:
            return VLC_CODEC_UNKNOWN;
    }
}
