
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int stride; int h; int samples; } ;
typedef TYPE_1__ fz_bitmap ;


 int memset (int ,int ,int) ;

void
fz_clear_bitmap(fz_context *ctx, fz_bitmap *bit)
{
 memset(bit->samples, 0, bit->stride * bit->h);
}
