
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;


 int VOUT_SPU_CHANNEL_OSD ;
 int vout_OSDIcon (int *,int ,short) ;

__attribute__((used)) static inline void
vouts_osd_Icon(vout_thread_t **vouts, size_t count, short type)
{
    for (size_t i = 0; i < count; ++i)
        vout_OSDIcon(vouts[i], VOUT_SPU_CHANNEL_OSD, type);
}
