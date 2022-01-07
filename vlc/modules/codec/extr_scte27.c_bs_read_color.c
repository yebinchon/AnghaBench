
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int alpha; int v; int u; } ;
typedef TYPE_1__ scte27_color_t ;
typedef int bs_t ;


 int bs_read (int *,int) ;
 scalar_t__ bs_read1 (int *) ;

__attribute__((used)) static scte27_color_t bs_read_color(bs_t *bs)
{
    scte27_color_t color;


    color.y = bs_read(bs, 5) << 3;
    color.alpha = bs_read1(bs) ? 0xff : 0x80;
    color.v = bs_read(bs, 5) << 3;
    color.u = bs_read(bs, 5) << 3;

    return color;
}
