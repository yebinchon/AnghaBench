
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int text_t ;
typedef int subtitle_t ;
typedef int subs_properties_t ;


 int ParseSubRipSubViewer (int *,int *,int *,int *,int *,int) ;
 int VLC_UNUSED (size_t) ;
 int subtitle_ParseSubViewerTiming ;

__attribute__((used)) static int ParseSubViewer( vlc_object_t *p_obj, subs_properties_t *p_props,
                            text_t *txt, subtitle_t *p_subtitle,
                            size_t i_idx )
{
    VLC_UNUSED( i_idx );

    return ParseSubRipSubViewer( p_obj, p_props, txt, p_subtitle,
                                 &subtitle_ParseSubViewerTiming,
                                 1 );
}
