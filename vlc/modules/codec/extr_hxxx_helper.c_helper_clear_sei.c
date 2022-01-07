
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_4__ {size_t i_sei_count; TYPE_1__* sei_list; } ;
struct hxxx_helper {scalar_t__ i_codec; TYPE_2__ hevc; } ;
struct TYPE_3__ {int * b; } ;


 scalar_t__ VLC_CODEC_HEVC ;
 int block_Release (int *) ;

__attribute__((used)) static void
helper_clear_sei(struct hxxx_helper *hh)
{
    if (hh->i_codec != VLC_CODEC_HEVC)
        return;

    for (uint8_t i=0; i<hh->hevc.i_sei_count; i++)
    {
        if(hh->hevc.sei_list[i].b)
        {
            block_Release(hh->hevc.sei_list[i].b);
            hh->hevc.sei_list[i].b = ((void*)0);
        }
    }
    hh->hevc.i_sei_count = 0;
}
