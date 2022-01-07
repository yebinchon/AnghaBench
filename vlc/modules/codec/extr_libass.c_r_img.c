
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rectangle_t ;
struct TYPE_3__ {scalar_t__ h; scalar_t__ dst_y; scalar_t__ w; scalar_t__ dst_x; } ;
typedef TYPE_1__ ASS_Image ;


 int r_create (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static rectangle_t r_img( const ASS_Image *p_img )
{
    return r_create( p_img->dst_x, p_img->dst_y, p_img->dst_x+p_img->w, p_img->dst_y+p_img->h );
}
