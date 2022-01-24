#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  size_t UINT ;
struct TYPE_14__ {int nPrevFrame; int /*<<< orphan*/ * palette_map; scalar_t__ bCompress; int /*<<< orphan*/ * pCurFrame; int /*<<< orphan*/ * pPrevFrame; scalar_t__ bDecompress; } ;
struct TYPE_13__ {int biWidth; int biHeight; int biSize; int biBitCount; size_t biClrUsed; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  scalar_t__ LRESULT ;
typedef  TYPE_1__* LPCBITMAPINFOHEADER ;
typedef  TYPE_2__ CodecInfo ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  GPTR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ICERR_BADFORMAT ; 
 scalar_t__ ICERR_BADPARAM ; 
 scalar_t__ ICERR_ERROR ; 
 scalar_t__ ICERR_MEMORY ; 
 scalar_t__ ICERR_OK ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ TRUE ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC10(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
			     LPCBITMAPINFOHEADER lpbiOut)
{
  const RGBQUAD *rgbIn;
  const RGBQUAD *rgbOut;
  UINT   i;
  size_t size;

  FUNC7("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);

  /* pre-condition */
  FUNC9(pi != NULL);

  /* check parameters -- need both formats */
  if (lpbiIn == NULL || lpbiOut == NULL)
    return ICERR_BADPARAM;
  /* And both must be supported */
  if (FUNC1(pi, lpbiIn, lpbiOut) != ICERR_OK)
    return ICERR_BADFORMAT;

  /* FIXME: cannot compress and decompress at same time! */
  if (pi->bDecompress) {
    FUNC2("cannot compress and decompress at same time!\n");
    return ICERR_ERROR;
  }

  if (pi->bCompress)
    FUNC0(pi);

  size = FUNC8(lpbiOut->biWidth * 16) / 2 * lpbiOut->biHeight;
  pi->pPrevFrame = FUNC4(FUNC3(GPTR, size * sizeof(WORD)));
  if (pi->pPrevFrame == NULL)
    return ICERR_MEMORY;
  pi->pCurFrame = FUNC4(FUNC3(GPTR, size * sizeof(WORD)));
  if (pi->pCurFrame == NULL) {
    FUNC0(pi);
    return ICERR_MEMORY;
  }
  pi->nPrevFrame = -1;
  pi->bCompress  = TRUE;

  rgbIn  = (const RGBQUAD*)((const BYTE*)lpbiIn  + lpbiIn->biSize);
  rgbOut = (const RGBQUAD*)((const BYTE*)lpbiOut + lpbiOut->biSize);

  switch (lpbiOut->biBitCount) {
  case 4:
  case 8:
    pi->palette_map = FUNC5(LPTR, lpbiIn->biClrUsed);
    if (pi->palette_map == NULL) {
      FUNC0(pi);
      return ICERR_MEMORY;
    }

    for (i = 0; i < lpbiIn->biClrUsed; i++) {
      pi->palette_map[i] = FUNC6(lpbiOut->biClrUsed, rgbOut, rgbIn[i]);
    }
    break;
  };

  return ICERR_OK;
}