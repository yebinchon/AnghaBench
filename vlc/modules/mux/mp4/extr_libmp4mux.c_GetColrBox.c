
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ color_range; int space; int transfer; int primaries; } ;
typedef TYPE_1__ video_format_t ;
typedef int bo_t ;


 scalar_t__ COLOR_RANGE_FULL ;
 int bo_add_16be (int *,int ) ;
 int bo_add_8 (int *,int) ;
 int bo_add_mem (int *,int,char*) ;
 int * box_new (char*) ;
 int vlc_coeffs_to_iso_23001_8_mc (int ) ;
 int vlc_primaries_to_iso_23001_8_cp (int ) ;
 int vlc_xfer_to_iso_23001_8_tc (int ) ;

__attribute__((used)) static bo_t *GetColrBox(const video_format_t *p_vfmt, bool b_mov)
{
    bo_t *p_box = box_new("colr");
    if(p_box)
    {
        bo_add_mem(p_box, 4, b_mov ? "nclc" : "nclx");
        bo_add_16be(p_box, vlc_primaries_to_iso_23001_8_cp(p_vfmt->primaries));
        bo_add_16be(p_box, vlc_xfer_to_iso_23001_8_tc(p_vfmt->transfer));
        bo_add_16be(p_box, vlc_coeffs_to_iso_23001_8_mc(p_vfmt->space));
        bo_add_8(p_box, p_vfmt->color_range == COLOR_RANGE_FULL ? 0x80 : 0x00);
    }
    return p_box;
}
