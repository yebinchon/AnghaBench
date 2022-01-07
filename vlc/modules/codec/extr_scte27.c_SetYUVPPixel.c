
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
struct TYPE_4__ {int* p_pixels; int i_pitch; } ;



__attribute__((used)) static inline void SetYUVPPixel(picture_t *picture, int x, int y, int value)
{
    picture->p->p_pixels[y * picture->p->i_pitch + x] = value;
}
