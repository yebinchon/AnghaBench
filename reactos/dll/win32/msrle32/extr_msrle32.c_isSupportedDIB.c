
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int biSize; int biPlanes; scalar_t__ biCompression; int biBitCount; scalar_t__ biClrUsed; scalar_t__ biHeight; int biWidth; } ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef unsigned long DWORD ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;


 scalar_t__ BI_BITFIELDS ;
 scalar_t__ BI_RGB ;
 unsigned long DIBWIDTHBYTES (TYPE_1__) ;
 int FALSE ;
 int TRUE ;
 int assert (int ) ;

__attribute__((used)) static BOOL isSupportedDIB(LPCBITMAPINFOHEADER lpbi)
{

  assert(lpbi != ((void*)0));


  if (lpbi->biSize < sizeof(BITMAPINFOHEADER) ||
      lpbi->biPlanes != 1)
    return FALSE;
  if (lpbi->biCompression != BI_RGB &&
      lpbi->biCompression != BI_BITFIELDS)
    return FALSE;


  if (lpbi->biBitCount != 1 &&
      lpbi->biBitCount != 4 &&
      lpbi->biBitCount != 8 &&
      lpbi->biBitCount != 15 &&
      lpbi->biBitCount != 16 &&
      lpbi->biBitCount != 24 &&
      lpbi->biBitCount != 32)
    return FALSE;


  if (!lpbi->biWidth || !lpbi->biHeight)
    return FALSE;
  if (DIBWIDTHBYTES(*lpbi) * (DWORD)lpbi->biHeight >= (1UL << 31) - 1)
    return FALSE;


  if (lpbi->biBitCount >= 15 && lpbi->biClrUsed > 0)
    return FALSE;

  return TRUE;
}
