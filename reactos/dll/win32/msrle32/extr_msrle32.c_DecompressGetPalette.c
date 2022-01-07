
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int biBitCount; int biClrUsed; scalar_t__ biSize; } ;
struct TYPE_9__ {int biBitCount; int biClrUsed; int biSize; } ;
typedef int RGBQUAD ;
typedef scalar_t__ LRESULT ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef scalar_t__ LPBYTE ;
typedef TYPE_2__* LPBITMAPINFOHEADER ;
typedef int CodecInfo ;
typedef int BYTE ;


 scalar_t__ DecompressQuery (int *,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ICERR_BADFORMAT ;
 scalar_t__ ICERR_BADPARAM ;
 scalar_t__ ICERR_ERROR ;
 scalar_t__ ICERR_OK ;
 int TRACE (char*,int *,TYPE_1__*,TYPE_2__*) ;
 int assert (int ) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static LRESULT DecompressGetPalette(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
        LPBITMAPINFOHEADER lpbiOut)
{
  int size;

  TRACE("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);


  assert(pi != ((void*)0));


  if (lpbiIn == ((void*)0) || lpbiOut == ((void*)0))
    return ICERR_BADPARAM;

  if (DecompressQuery(pi, lpbiIn, lpbiOut) != ICERR_OK)
    return ICERR_BADFORMAT;

  if (lpbiOut->biBitCount > 8)
    return ICERR_ERROR;

  if (lpbiIn->biBitCount <= 8) {
    if (lpbiIn->biClrUsed > 0)
      size = lpbiIn->biClrUsed;
    else
      size = (1 << lpbiIn->biBitCount);

    lpbiOut->biClrUsed = size;

    memcpy((LPBYTE)lpbiOut + lpbiOut->biSize, (const BYTE*)lpbiIn + lpbiIn->biSize, size * sizeof(RGBQUAD));
  }

  return ICERR_OK;
}
