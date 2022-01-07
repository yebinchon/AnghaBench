
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_color_primaries_t ;
typedef size_t uint8_t ;


 size_t ARRAY_SIZE (int *) ;
 int COLOR_PRIMARIES_EBU_3213 ;
 int COLOR_PRIMARIES_UNDEF ;
 size_t ISO_23001_8_CP_EBU_3213 ;
 int * iso_23001_8_cp_to_vlc_primaries_table ;

__attribute__((used)) static inline video_color_primaries_t iso_23001_8_cp_to_vlc_primaries( uint8_t v )
{
    if( v == ISO_23001_8_CP_EBU_3213 )
        return COLOR_PRIMARIES_EBU_3213;
    return v < ARRAY_SIZE(iso_23001_8_cp_to_vlc_primaries_table)
           ? iso_23001_8_cp_to_vlc_primaries_table[v]
           : COLOR_PRIMARIES_UNDEF;
}
