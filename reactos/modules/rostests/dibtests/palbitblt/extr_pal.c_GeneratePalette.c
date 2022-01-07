
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rgbRed; int rgbGreen; int rgbBlue; scalar_t__ rgbReserved; } ;
typedef TYPE_1__ RGBQUAD ;



void GeneratePalette(RGBQUAD* p)
{
 int i;
 for(i=0;i<256;i++)
 {
  p[i].rgbRed = i;
  p[i].rgbGreen = i;
  p[i].rgbBlue = i;
  p[i].rgbReserved = 0;
 }
}
