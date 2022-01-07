
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ rgbBlue; scalar_t__ rgbGreen; scalar_t__ rgbRed; } ;
typedef TYPE_1__ RGBQUAD ;
typedef int INT ;
typedef size_t BYTE ;


 int assert (int ) ;

__attribute__((used)) static BYTE MSRLE32_GetNearestPaletteIndex(UINT count, const RGBQUAD *clrs, RGBQUAD clr)
{
  INT diff = 0x00FFFFFF;
  UINT i;
  UINT idx = 0;


  assert(clrs != ((void*)0));

  for (i = 0; i < count; i++) {
    int r = ((int)clrs[i].rgbRed - (int)clr.rgbRed);
    int g = ((int)clrs[i].rgbGreen - (int)clr.rgbGreen);
    int b = ((int)clrs[i].rgbBlue - (int)clr.rgbBlue);

    r = r*r + g*g + b*b;

    if (r < diff) {
      idx = i;
      diff = r;
      if (diff == 0)
 break;
    }
  }

  return idx;
}
