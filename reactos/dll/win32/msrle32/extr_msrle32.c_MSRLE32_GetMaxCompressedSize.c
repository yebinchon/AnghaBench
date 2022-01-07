
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int biWidth; int biBitCount; int biHeight; } ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef int LONG ;


 int assert (int ) ;

__attribute__((used)) static LONG MSRLE32_GetMaxCompressedSize(LPCBITMAPINFOHEADER lpbi)
{
  LONG a, b, size;


  assert(lpbi != ((void*)0));

  a = lpbi->biWidth / 255;
  b = lpbi->biWidth % 255;
  if (lpbi->biBitCount <= 4) {
    a /= 2;
    b /= 2;
  }

  size = (2 + a * (2 + ((a + 2) & ~2)) + b * (2 + ((b + 2) & ~2)));
  return size * lpbi->biHeight + 2;
}
