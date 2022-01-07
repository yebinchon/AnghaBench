
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int biSizeImage; int biHeight; int biCompression; } ;
struct TYPE_11__ {int biSize; int biBitCount; int biClrUsed; } ;
typedef int RGBQUAD ;
typedef scalar_t__ LRESULT ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef TYPE_2__* LPBITMAPINFOHEADER ;
typedef int DWORD ;
typedef int CodecInfo ;


 int BI_RGB ;
 int DIBWIDTHBYTES (TYPE_2__) ;
 scalar_t__ DecompressQuery (int *,TYPE_1__*,int *) ;
 scalar_t__ ICERR_BADFORMAT ;
 scalar_t__ ICERR_BADPARAM ;
 scalar_t__ ICERR_OK ;
 int TRACE (char*,int *,TYPE_1__*,TYPE_2__*) ;
 int assert (int ) ;
 int memcpy (TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static LRESULT DecompressGetFormat(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
       LPBITMAPINFOHEADER lpbiOut)
{
  DWORD size;

  TRACE("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);


  assert(pi != ((void*)0));

  if (lpbiIn == ((void*)0))
    return (lpbiOut != ((void*)0) ? ICERR_BADPARAM : 0);

  if (DecompressQuery(pi, lpbiIn, ((void*)0)) != ICERR_OK)
    return (lpbiOut != ((void*)0) ? ICERR_BADFORMAT : 0);

  size = lpbiIn->biSize;

  if (lpbiIn->biBitCount <= 8) {
    int colors;

    if (lpbiIn->biClrUsed == 0)
      colors = 1 << lpbiIn->biBitCount;
    else
      colors = lpbiIn->biClrUsed;

    size += colors * sizeof(RGBQUAD);
  }

  if (lpbiOut != ((void*)0)) {
    memcpy(lpbiOut, lpbiIn, size);
    lpbiOut->biCompression = BI_RGB;
    lpbiOut->biSizeImage = DIBWIDTHBYTES(*lpbiOut) * lpbiOut->biHeight;

    return ICERR_OK;
  } else
    return size;
}
