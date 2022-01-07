
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_fourcc_t ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 char const* GetOmxAudioEncRole (int ) ;
 char const* GetOmxAudioRole (int ) ;
 char const* GetOmxVideoEncRole (int ) ;
 char const* GetOmxVideoRole (int ) ;
 int VIDEO_ES ;

const char *GetOmxRole( vlc_fourcc_t i_fourcc, enum es_format_category_e i_cat,
                        bool b_enc )
{
    if(b_enc)
        return i_cat == VIDEO_ES ?
            GetOmxVideoEncRole( i_fourcc ) : GetOmxAudioEncRole( i_fourcc );
    else
        return i_cat == VIDEO_ES ?
            GetOmxVideoRole( i_fourcc ) : GetOmxAudioRole( i_fourcc );
}
