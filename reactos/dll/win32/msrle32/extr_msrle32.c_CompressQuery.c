
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ fccHandler; } ;
struct TYPE_8__ {int biBitCount; int biWidth; scalar_t__ biHeight; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef TYPE_2__ CodecInfo ;


 scalar_t__ FOURCC_RLE4 ;
 int ICERR_BADFORMAT ;
 int ICERR_BADPARAM ;
 int ICERR_OK ;
 int ICERR_UNSUPPORTED ;
 int assert (int ) ;
 int isSupportedDIB (TYPE_1__*) ;
 int isSupportedMRLE (TYPE_1__*) ;

__attribute__((used)) static LRESULT CompressQuery(const CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
        LPCBITMAPINFOHEADER lpbiOut)
{

  assert(pi != ((void*)0));


  if (lpbiIn == ((void*)0) && lpbiOut == ((void*)0))
    return ICERR_BADPARAM;


  if (lpbiIn != ((void*)0)) {
    if (!isSupportedDIB(lpbiIn))
      return ICERR_BADFORMAT;


    if (lpbiIn->biBitCount <= 4 && (lpbiIn->biWidth % 2))
      return ICERR_BADFORMAT;

    if (pi->fccHandler == FOURCC_RLE4 && lpbiIn->biBitCount > 4)
      return ICERR_UNSUPPORTED;
    else if (lpbiIn->biBitCount > 8)
      return ICERR_UNSUPPORTED;
  }


  if (lpbiOut != ((void*)0)) {
    if (!isSupportedMRLE(lpbiOut))
      return ICERR_BADFORMAT;

    if (lpbiIn != ((void*)0)) {
      if (lpbiIn->biWidth != lpbiOut->biWidth)
 return ICERR_UNSUPPORTED;
      if (lpbiIn->biHeight != lpbiOut->biHeight)
 return ICERR_UNSUPPORTED;
      if (lpbiIn->biBitCount > lpbiOut->biBitCount)
 return ICERR_UNSUPPORTED;
    }
  }

  return ICERR_OK;
}
