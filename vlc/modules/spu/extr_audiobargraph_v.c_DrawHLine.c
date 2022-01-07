
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_pitch; int * p_pixels; } ;
typedef TYPE_1__ plane_t ;


 int memset (int *,int const,int) ;

__attribute__((used)) static inline void DrawHLine(plane_t *p, int line, int col, const uint8_t color[4], int w)
{
    for (int j = 0; j < 4; j++)
        memset(&p[j].p_pixels[line * p[j].i_pitch + col], color[j], w);
}
