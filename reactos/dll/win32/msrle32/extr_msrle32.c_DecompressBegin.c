
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_19__ {int* palette_map; scalar_t__ bDecompress; scalar_t__ bCompress; } ;
struct TYPE_18__ {scalar_t__ biCompression; int biBitCount; int biClrUsed; int biSize; } ;
struct TYPE_17__ {int rgbRed; int rgbGreen; int rgbBlue; } ;
typedef TYPE_1__ RGBQUAD ;
typedef scalar_t__ LRESULT ;
typedef TYPE_2__* LPCBITMAPINFOHEADER ;
typedef TYPE_3__ CodecInfo ;
typedef int BYTE ;


 scalar_t__ BI_RGB ;
 int DecompressEnd (TYPE_3__*) ;
 scalar_t__ DecompressQuery (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 int FIXME (char*) ;
 scalar_t__ ICERR_BADFORMAT ;
 scalar_t__ ICERR_BADPARAM ;
 scalar_t__ ICERR_ERROR ;
 scalar_t__ ICERR_MEMORY ;
 scalar_t__ ICERR_OK ;
 int LPTR ;
 void* LocalAlloc (int ,int) ;
 int MSRLE32_GetNearestPaletteIndex (int,TYPE_1__ const*,TYPE_1__ const) ;
 int TRACE (char*,TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 int memcpy (int*,TYPE_1__ const*,int) ;

__attribute__((used)) static LRESULT DecompressBegin(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
          LPCBITMAPINFOHEADER lpbiOut)
{
  const RGBQUAD *rgbIn;
  const RGBQUAD *rgbOut;
  UINT i;

  TRACE("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);


  assert(pi != ((void*)0));


  if (lpbiIn == ((void*)0) || lpbiOut == ((void*)0))
    return ICERR_BADPARAM;
  if (DecompressQuery(pi, lpbiIn, lpbiOut) != ICERR_OK)
    return ICERR_BADFORMAT;


  if (pi->bCompress) {
    FIXME("cannot compress and decompress at same time!\n");
    return ICERR_ERROR;
  }

  if (pi->bDecompress)
    DecompressEnd(pi);

  if (lpbiIn->biCompression != BI_RGB)
  {
    int colors;

    if (lpbiIn->biBitCount <= 8 && lpbiIn->biClrUsed == 0)
      colors = 1 << lpbiIn->biBitCount;
    else
      colors = lpbiIn->biClrUsed;

    rgbIn = (const RGBQUAD*)((const BYTE*)lpbiIn + lpbiIn->biSize);
    rgbOut = (const RGBQUAD*)((const BYTE*)lpbiOut + lpbiOut->biSize);

    switch (lpbiOut->biBitCount) {
    case 4:
    case 8:
      pi->palette_map = LocalAlloc(LPTR, colors);
      if (pi->palette_map == ((void*)0))
        return ICERR_MEMORY;

      for (i = 0; i < colors; i++)
        pi->palette_map[i] = MSRLE32_GetNearestPaletteIndex(colors, rgbOut, rgbIn[i]);
      break;
    case 15:
    case 16:
      pi->palette_map = LocalAlloc(LPTR, colors * 2);
      if (pi->palette_map == ((void*)0))
        return ICERR_MEMORY;

      for (i = 0; i < colors; i++) {
        WORD color;

        if (lpbiOut->biBitCount == 15)
    color = ((rgbIn[i].rgbRed >> 3) << 10)
      | ((rgbIn[i].rgbGreen >> 3) << 5) | (rgbIn[i].rgbBlue >> 3);
        else
    color = ((rgbIn[i].rgbRed >> 3) << 11)
      | ((rgbIn[i].rgbGreen >> 3) << 5) | (rgbIn[i].rgbBlue >> 3);

        pi->palette_map[i * 2 + 1] = color >> 8;
        pi->palette_map[i * 2 + 0] = color & 0xFF;
      };
      break;
    case 24:
    case 32:
      pi->palette_map = LocalAlloc(LPTR, colors * sizeof(RGBQUAD));
      if (pi->palette_map == ((void*)0))
        return ICERR_MEMORY;
      memcpy(pi->palette_map, rgbIn, colors * sizeof(RGBQUAD));
      break;
    };
  }
  pi->bDecompress = TRUE;

  return ICERR_OK;
}
