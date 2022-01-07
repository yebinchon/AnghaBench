
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_transfer_func_t ;
typedef int video_color_space_t ;
typedef int video_color_primaries_t ;
typedef enum j2k_color_specs_e { ____Placeholder_j2k_color_specs_e } j2k_color_specs_e ;
struct TYPE_2__ {int space; int transfer; int primaries; } ;


 int J2K_COLOR_SPEC_SMPTE_2084 ;
 int J2K_COLOR_SPEC_UNKNOWN ;
 TYPE_1__* j2k_color_specifications ;

__attribute__((used)) static inline void j2k_fill_color_profile( enum j2k_color_specs_e e,
                                           video_color_primaries_t *primaries,
                                           video_transfer_func_t *transfer,
                                           video_color_space_t *space )
{
    if( e > J2K_COLOR_SPEC_UNKNOWN && e <= J2K_COLOR_SPEC_SMPTE_2084 )
    {
        *primaries = j2k_color_specifications[e].primaries;
        *transfer = j2k_color_specifications[e].transfer;
        *space = j2k_color_specifications[e].space;
    }
}
