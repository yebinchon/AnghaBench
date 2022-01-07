
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hevc_sei_pic_timing_t ;


 int free (int *) ;

void hevc_release_sei_pic_timing( hevc_sei_pic_timing_t *p_timing )
{
    free( p_timing );
}
