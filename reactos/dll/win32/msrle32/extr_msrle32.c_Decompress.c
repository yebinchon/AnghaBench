
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_21__ {scalar_t__ biWidth; int biHeight; int biSizeImage; } ;
struct TYPE_20__ {int bDecompress; } ;
struct TYPE_19__ {int * lpOutput; int * lpInput; TYPE_6__* lpbiOutput; TYPE_10__* lpbiInput; } ;
struct TYPE_18__ {scalar_t__ biWidth; int biHeight; scalar_t__ biCompression; int biSizeImage; int biBitCount; } ;
typedef scalar_t__ LRESULT ;
typedef TYPE_1__ ICDECOMPRESS ;
typedef int DWORD ;
typedef TYPE_2__ CodecInfo ;


 scalar_t__ BI_RGB ;
 int DIBWIDTHBYTES (TYPE_6__) ;
 scalar_t__ DecompressBegin (TYPE_2__*,TYPE_10__*,TYPE_6__*) ;
 scalar_t__ DecompressQuery (TYPE_2__*,TYPE_10__*,TYPE_6__*) ;
 scalar_t__ ICERR_BADFORMAT ;
 scalar_t__ ICERR_BADPARAM ;
 scalar_t__ ICERR_OK ;
 scalar_t__ MSRLE32_DecompressRLE4 (TYPE_2__*,TYPE_6__*,int *,int *) ;
 scalar_t__ MSRLE32_DecompressRLE8 (TYPE_2__*,TYPE_6__*,int *,int *) ;
 int TRACE (char*,TYPE_2__*,TYPE_1__*,int ) ;
 int assert (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static LRESULT Decompress(CodecInfo *pi, ICDECOMPRESS *pic, DWORD dwSize)
{
  TRACE("(%p,%p,%u)\n",pi,pic,dwSize);


  assert(pi != ((void*)0));


  if (pic == ((void*)0))
    return ICERR_BADPARAM;
  if (pic->lpbiInput == ((void*)0) || pic->lpInput == ((void*)0) ||
      pic->lpbiOutput == ((void*)0) || pic->lpOutput == ((void*)0))
    return ICERR_BADPARAM;


  if (! pi->bDecompress) {
    LRESULT hr = DecompressBegin(pi, pic->lpbiInput, pic->lpbiOutput);
    if (hr != ICERR_OK)
      return hr;
  } else if (DecompressQuery(pi, pic->lpbiInput, pic->lpbiOutput) != ICERR_OK)
    return ICERR_BADFORMAT;

  assert(pic->lpbiInput->biWidth == pic->lpbiOutput->biWidth);
  assert(pic->lpbiInput->biHeight == pic->lpbiOutput->biHeight);


  if (pic->lpbiInput->biCompression == BI_RGB)
  {
    pic->lpbiOutput->biSizeImage = pic->lpbiInput->biSizeImage;
    memcpy(pic->lpOutput, pic->lpInput, pic->lpbiOutput->biSizeImage);
    return ICERR_OK;
  }

  pic->lpbiOutput->biSizeImage = DIBWIDTHBYTES(*pic->lpbiOutput) * pic->lpbiOutput->biHeight;
  if (pic->lpbiInput->biBitCount == 4)
    return MSRLE32_DecompressRLE4(pi, pic->lpbiOutput, pic->lpInput, pic->lpOutput);
  else
    return MSRLE32_DecompressRLE8(pi, pic->lpbiOutput, pic->lpInput, pic->lpOutput);
}
