
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ video_color_primaries_t ;
typedef enum iso_23001_8_cp { ____Placeholder_iso_23001_8_cp } iso_23001_8_cp ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ COLOR_PRIMARIES_EBU_3213 ;
 int ISO_23001_8_CP_EBU_3213 ;
 int ISO_23001_8_CP_UNSPECIFIED ;
 scalar_t__* iso_23001_8_cp_to_vlc_primaries_table ;

__attribute__((used)) static inline enum iso_23001_8_cp vlc_primaries_to_iso_23001_8_cp( video_color_primaries_t v )
{
    for(size_t i=1; i<ARRAY_SIZE(iso_23001_8_cp_to_vlc_primaries_table); i++)
        if(iso_23001_8_cp_to_vlc_primaries_table[i] == v)
            return (enum iso_23001_8_cp) i;
    if( v == COLOR_PRIMARIES_EBU_3213 )
        return ISO_23001_8_CP_EBU_3213;
    else
        return ISO_23001_8_CP_UNSPECIFIED;
}
