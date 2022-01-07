
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picture_t ;
typedef int filter_t ;


 int RenderYadif (int *,int *,int *,int ,int ) ;

int RenderYadifSingle( filter_t *p_filter, picture_t *p_dst, picture_t *p_src )
{
    return RenderYadif( p_filter, p_dst, p_src, 0, 0 );
}
