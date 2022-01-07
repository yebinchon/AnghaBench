
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ biWidth; scalar_t__ biHeight; scalar_t__ biBitCount; } ;
typedef int LRESULT ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef int CodecInfo ;


 int ICERR_BADFORMAT ;
 int ICERR_BADPARAM ;
 int ICERR_OK ;
 int ICERR_UNSUPPORTED ;
 int TRACE (char*,int *,TYPE_1__*,TYPE_1__*) ;
 int assert (int ) ;
 int isSupportedDIB (TYPE_1__*) ;
 int isSupportedMRLE (TYPE_1__*) ;

__attribute__((used)) static LRESULT DecompressQuery(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
          LPCBITMAPINFOHEADER lpbiOut)
{
  LRESULT hr = ICERR_OK;

  TRACE("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);


  assert(pi != ((void*)0));


  if (lpbiIn == ((void*)0) && lpbiOut == ((void*)0))
    return ICERR_BADPARAM;


  if (lpbiIn != ((void*)0)) {
    if (!isSupportedMRLE(lpbiIn) && !isSupportedDIB(lpbiIn))
      return ICERR_BADFORMAT;
  }


  if (lpbiOut != ((void*)0)) {
    if (!isSupportedDIB(lpbiOut))
      hr = ICERR_BADFORMAT;

    if (lpbiIn != ((void*)0)) {
      if (lpbiIn->biWidth != lpbiOut->biWidth)
        hr = ICERR_UNSUPPORTED;
      if (lpbiIn->biHeight != lpbiOut->biHeight)
        hr = ICERR_UNSUPPORTED;
      if (lpbiIn->biBitCount > lpbiOut->biBitCount)
        hr = ICERR_UNSUPPORTED;
    }
  }

  return hr;
}
