
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_tcd_seg_t ;


 int memset (int *,int ,int) ;

void opj_tcd_reinit_segment(opj_tcd_seg_t* seg)
{
    memset(seg, 0, sizeof(opj_tcd_seg_t));
}
