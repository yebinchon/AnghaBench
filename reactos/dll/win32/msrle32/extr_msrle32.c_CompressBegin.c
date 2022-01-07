
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WORD ;
typedef size_t UINT ;
struct TYPE_14__ {int nPrevFrame; int * palette_map; scalar_t__ bCompress; int * pCurFrame; int * pPrevFrame; scalar_t__ bDecompress; } ;
struct TYPE_13__ {int biWidth; int biHeight; int biSize; int biBitCount; size_t biClrUsed; } ;
typedef int RGBQUAD ;
typedef scalar_t__ LRESULT ;
typedef TYPE_1__* LPCBITMAPINFOHEADER ;
typedef TYPE_2__ CodecInfo ;
typedef int BYTE ;


 int CompressEnd (TYPE_2__*) ;
 scalar_t__ CompressQuery (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int FIXME (char*) ;
 int GPTR ;
 int GlobalAlloc (int ,size_t) ;
 void* GlobalLock (int ) ;
 scalar_t__ ICERR_BADFORMAT ;
 scalar_t__ ICERR_BADPARAM ;
 scalar_t__ ICERR_ERROR ;
 scalar_t__ ICERR_MEMORY ;
 scalar_t__ ICERR_OK ;
 int LPTR ;
 int * LocalAlloc (int ,size_t) ;
 int MSRLE32_GetNearestPaletteIndex (size_t,int const*,int const) ;
 int TRACE (char*,TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ TRUE ;
 int WIDTHBYTES (int) ;
 int assert (int ) ;

__attribute__((used)) static LRESULT CompressBegin(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
        LPCBITMAPINFOHEADER lpbiOut)
{
  const RGBQUAD *rgbIn;
  const RGBQUAD *rgbOut;
  UINT i;
  size_t size;

  TRACE("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);


  assert(pi != ((void*)0));


  if (lpbiIn == ((void*)0) || lpbiOut == ((void*)0))
    return ICERR_BADPARAM;

  if (CompressQuery(pi, lpbiIn, lpbiOut) != ICERR_OK)
    return ICERR_BADFORMAT;


  if (pi->bDecompress) {
    FIXME("cannot compress and decompress at same time!\n");
    return ICERR_ERROR;
  }

  if (pi->bCompress)
    CompressEnd(pi);

  size = WIDTHBYTES(lpbiOut->biWidth * 16) / 2 * lpbiOut->biHeight;
  pi->pPrevFrame = GlobalLock(GlobalAlloc(GPTR, size * sizeof(WORD)));
  if (pi->pPrevFrame == ((void*)0))
    return ICERR_MEMORY;
  pi->pCurFrame = GlobalLock(GlobalAlloc(GPTR, size * sizeof(WORD)));
  if (pi->pCurFrame == ((void*)0)) {
    CompressEnd(pi);
    return ICERR_MEMORY;
  }
  pi->nPrevFrame = -1;
  pi->bCompress = TRUE;

  rgbIn = (const RGBQUAD*)((const BYTE*)lpbiIn + lpbiIn->biSize);
  rgbOut = (const RGBQUAD*)((const BYTE*)lpbiOut + lpbiOut->biSize);

  switch (lpbiOut->biBitCount) {
  case 4:
  case 8:
    pi->palette_map = LocalAlloc(LPTR, lpbiIn->biClrUsed);
    if (pi->palette_map == ((void*)0)) {
      CompressEnd(pi);
      return ICERR_MEMORY;
    }

    for (i = 0; i < lpbiIn->biClrUsed; i++) {
      pi->palette_map[i] = MSRLE32_GetNearestPaletteIndex(lpbiOut->biClrUsed, rgbOut, rgbIn[i]);
    }
    break;
  };

  return ICERR_OK;
}
