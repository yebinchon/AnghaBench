
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;





 int libvlc_track_audio ;
 int libvlc_track_text ;
 int libvlc_track_unknown ;
 int libvlc_track_video ;

__attribute__((used)) static int
track_type_from_cat(enum es_format_category_e cat)
{
    switch (cat)
    {
        case 128:
            return libvlc_track_video;
        case 130:
            return libvlc_track_audio;
        case 129:
            return libvlc_track_text;
        default:
            return libvlc_track_unknown;
    }
}
