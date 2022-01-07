
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int plane_t ;


 int DrawHLine (int *,int,int,int const*,int) ;

__attribute__((used)) static void Draw2VLines(plane_t *p, int scale, int col, const uint8_t color[4])
{
    for (int i = 10; i < scale + 10; i++)
        DrawHLine(p, i, col, color, 2);
}
