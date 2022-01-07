
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int biClrUsed; int biBitCount; } ;
typedef TYPE_1__ BITMAPINFOHEADER ;



__attribute__((used)) static int num_colours(const BITMAPINFOHEADER *lpbi)
{
 if(lpbi->biClrUsed)
  return lpbi->biClrUsed;
 if(lpbi->biBitCount<=8)
  return 1<<lpbi->biBitCount;
 return 0;
}
