
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_color_space_t ;
typedef size_t uint8_t ;


 size_t ARRAY_SIZE (int *) ;
 int COLOR_SPACE_UNDEF ;
 int * iso_23001_8_mc_to_vlc_coeffs_table ;

__attribute__((used)) static inline video_color_space_t iso_23001_8_mc_to_vlc_coeffs( uint8_t v )
{
    return v < ARRAY_SIZE(iso_23001_8_mc_to_vlc_coeffs_table)
           ? iso_23001_8_mc_to_vlc_coeffs_table[v]
           : COLOR_SPACE_UNDEF;
}
