
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int fccHandler; } ;
struct TYPE_14__ {int biSize; int biPlanes; int biBitCount; int biClrUsed; scalar_t__ biClrImportant; int biYPelsPerMeter; int biXPelsPerMeter; int biSizeImage; int biCompression; int biHeight; int biWidth; } ;
struct TYPE_13__ {int biBitCount; int biClrUsed; int biSize; int biYPelsPerMeter; int biXPelsPerMeter; int biHeight; int biWidth; } ;
typedef int RGBQUAD ;
typedef int LRESULT ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef scalar_t__ LPBYTE ;
typedef TYPE_2__* LPBITMAPINFOHEADER ;
typedef TYPE_3__ CodecInfo ;
typedef int BYTE ;
typedef int BITMAPINFOHEADER ;


 int BI_RLE4 ;
 int BI_RLE8 ;
 scalar_t__ CompressQuery (TYPE_3__*,TYPE_1__*,int *) ;




 int ICERR_BADFORMAT ;
 int ICERR_BADPARAM ;
 int ICERR_ERROR ;
 scalar_t__ ICERR_OK ;
 int MSRLE32_GetMaxCompressedSize (TYPE_2__*) ;
 int TRACE (char*,TYPE_3__*,TYPE_1__*,TYPE_2__*) ;
 int assert (int) ;
 int memcpy (scalar_t__,int const*,int) ;
 int min (int,int) ;

__attribute__((used)) static LRESULT CompressGetFormat(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
     LPBITMAPINFOHEADER lpbiOut)
{
  LRESULT size;

  TRACE("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);


  assert(pi != ((void*)0));


  if (lpbiIn == ((void*)0)) {
    if (lpbiOut != ((void*)0))
      return ICERR_BADPARAM;
    return 0;
  }


  if (CompressQuery(pi, lpbiIn, ((void*)0)) != ICERR_OK)
    return (lpbiOut == ((void*)0) ? ICERR_BADFORMAT : 0);

  assert(0 < lpbiIn->biBitCount && lpbiIn->biBitCount <= 8);

  switch (pi->fccHandler) {
  case 129:
    size = 1 << 4;
    break;
  case 128:
    size = 1 << 8;
    break;
  case 130:
  case 131:
    size = (lpbiIn->biBitCount <= 4 ? 1 << 4 : 1 << 8);
    break;
  default:
    return ICERR_ERROR;
  }

  if (lpbiIn->biClrUsed != 0)
    size = lpbiIn->biClrUsed;

  size = sizeof(BITMAPINFOHEADER) + size * sizeof(RGBQUAD);

  if (lpbiOut != ((void*)0)) {
    lpbiOut->biSize = sizeof(BITMAPINFOHEADER);
    lpbiOut->biWidth = lpbiIn->biWidth;
    lpbiOut->biHeight = lpbiIn->biHeight;
    lpbiOut->biPlanes = 1;
    if (pi->fccHandler == 129 ||
 lpbiIn->biBitCount <= 4) {
      lpbiOut->biCompression = BI_RLE4;
      lpbiOut->biBitCount = 4;
    } else {
      lpbiOut->biCompression = BI_RLE8;
      lpbiOut->biBitCount = 8;
    }
    lpbiOut->biSizeImage = MSRLE32_GetMaxCompressedSize(lpbiOut);
    lpbiOut->biXPelsPerMeter = lpbiIn->biXPelsPerMeter;
    lpbiOut->biYPelsPerMeter = lpbiIn->biYPelsPerMeter;
    if (lpbiIn->biClrUsed == 0)
      size = 1<<lpbiIn->biBitCount;
    else
      size = lpbiIn->biClrUsed;
    lpbiOut->biClrUsed = min(size, 1 << lpbiOut->biBitCount);
    lpbiOut->biClrImportant = 0;

    memcpy((LPBYTE)lpbiOut + lpbiOut->biSize,
    (const BYTE*)lpbiIn + lpbiIn->biSize, lpbiOut->biClrUsed * sizeof(RGBQUAD));

    return ICERR_OK;
  } else
    return size;
}
