
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ i_previous_nal_type; } ;
struct hxxx_helper {TYPE_1__ hevc; } ;


 scalar_t__ HEVC_NAL_IRAP_VCL23 ;
 scalar_t__ HEVC_NAL_PREF_SEI ;
 int helper_clear_sei (struct hxxx_helper*) ;

__attribute__((used)) static void
helper_check_sei_au(struct hxxx_helper *hh, uint8_t i_nal_type)
{
    if ((i_nal_type <= HEVC_NAL_IRAP_VCL23 &&
         hh->hevc.i_previous_nal_type != HEVC_NAL_PREF_SEI) ||
        (i_nal_type == HEVC_NAL_PREF_SEI &&
         hh->hevc.i_previous_nal_type != HEVC_NAL_PREF_SEI))
        helper_clear_sei(hh);
    hh->hevc.i_previous_nal_type = i_nal_type;
}
