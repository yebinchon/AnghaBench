
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;


 short OSD_HOR_SLIDER ;
 int VOUT_SPU_CHANNEL_OSD_HSLIDER ;
 int VOUT_SPU_CHANNEL_OSD_VSLIDER ;
 int vout_OSDSlider (int *,int,int,short) ;

__attribute__((used)) static inline void
vouts_osd_Slider(vout_thread_t **vouts, size_t count, int position, short type)
{
    int channel = type == OSD_HOR_SLIDER ?
        VOUT_SPU_CHANNEL_OSD_HSLIDER : VOUT_SPU_CHANNEL_OSD_VSLIDER;
    for (size_t i = 0; i < count; ++i)
        vout_OSDSlider(vouts[i], channel, position, type);
}
