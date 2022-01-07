
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int filter_t ;


 int NV12_I420 (int *,int *,int *) ;
 int picture_SwapUV (int *) ;

__attribute__((used)) static void NV12_YV12( filter_t *p_filter, picture_t *p_src,
                                           picture_t *p_dst )
{
    NV12_I420( p_filter, p_src, p_dst );
    picture_SwapUV( p_dst );
}
