
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int filter_t ;


 int I420_NV12 (int *,int *,int *) ;
 int picture_SwapUV (int *) ;

__attribute__((used)) static void YV12_NV12( filter_t *p_filter, picture_t *p_src,
                                           picture_t *p_dst )
{
    picture_SwapUV( p_src );
    I420_NV12( p_filter, p_src, p_dst );
}
