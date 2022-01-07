
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {int rgbRed; int rgbGreen; int rgbBlue; } ;
typedef TYPE_1__ RGBQUAD ;



__attribute__((used)) static inline WORD Intensity(RGBQUAD clr)
{
  return (30 * clr.rgbRed + 59 * clr.rgbGreen + 11 * clr.rgbBlue)/4;
}
