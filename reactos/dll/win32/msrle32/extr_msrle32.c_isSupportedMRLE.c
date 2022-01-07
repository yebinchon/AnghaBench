
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int biSize; int biPlanes; scalar_t__ biCompression; int biBitCount; int biWidth; } ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;


 scalar_t__ BI_RLE4 ;
 scalar_t__ BI_RLE8 ;
 int FALSE ;
 int TRUE ;
 int assert (int ) ;

__attribute__((used)) static BOOL isSupportedMRLE(LPCBITMAPINFOHEADER lpbi)
{

  assert(lpbi != ((void*)0));

  if (lpbi->biSize < sizeof(BITMAPINFOHEADER) ||
      lpbi->biPlanes != 1)
    return FALSE;

  if (lpbi->biCompression == BI_RLE4) {
    if (lpbi->biBitCount != 4 ||
 (lpbi->biWidth % 2) != 0)
      return FALSE;
  } else if (lpbi->biCompression == BI_RLE8) {
    if (lpbi->biBitCount != 8)
      return FALSE;
  } else
    return FALSE;

  return TRUE;
}
