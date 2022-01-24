#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ biWidth; int biHeight; int biSizeImage; } ;
struct TYPE_20__ {int /*<<< orphan*/  bDecompress; } ;
struct TYPE_19__ {int /*<<< orphan*/ * lpOutput; int /*<<< orphan*/ * lpInput; TYPE_6__* lpbiOutput; TYPE_10__* lpbiInput; } ;
struct TYPE_18__ {scalar_t__ biWidth; int biHeight; scalar_t__ biCompression; int biSizeImage; int biBitCount; } ;
typedef  scalar_t__ LRESULT ;
typedef  TYPE_1__ ICDECOMPRESS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_2__ CodecInfo ;

/* Variables and functions */
 scalar_t__ BI_RGB ; 
 int FUNC0 (TYPE_6__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_10__*,TYPE_6__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_10__*,TYPE_6__*) ; 
 scalar_t__ ICERR_BADFORMAT ; 
 scalar_t__ ICERR_BADPARAM ; 
 scalar_t__ ICERR_OK ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LRESULT FUNC8(CodecInfo *pi, ICDECOMPRESS *pic, DWORD dwSize)
{
  FUNC5("(%p,%p,%u)\n",pi,pic,dwSize);

  /* pre-condition */
  FUNC6(pi != NULL);

  /* check parameters */
  if (pic == NULL)
    return ICERR_BADPARAM;
  if (pic->lpbiInput == NULL || pic->lpInput == NULL ||
      pic->lpbiOutput == NULL || pic->lpOutput == NULL)
    return ICERR_BADPARAM;

  /* check formats */
  if (! pi->bDecompress) {
    LRESULT hr = FUNC1(pi, pic->lpbiInput, pic->lpbiOutput);
    if (hr != ICERR_OK)
      return hr;
  } else if (FUNC2(pi, pic->lpbiInput, pic->lpbiOutput) != ICERR_OK)
    return ICERR_BADFORMAT;

  FUNC6(pic->lpbiInput->biWidth  == pic->lpbiOutput->biWidth);
  FUNC6(pic->lpbiInput->biHeight == pic->lpbiOutput->biHeight);

  /* Uncompressed frame? */
  if (pic->lpbiInput->biCompression == BI_RGB)
  {
    pic->lpbiOutput->biSizeImage = pic->lpbiInput->biSizeImage;
    FUNC7(pic->lpOutput, pic->lpInput, pic->lpbiOutput->biSizeImage);
    return ICERR_OK;
  }

  pic->lpbiOutput->biSizeImage = FUNC0(*pic->lpbiOutput) * pic->lpbiOutput->biHeight;
  if (pic->lpbiInput->biBitCount == 4)
    return FUNC3(pi, pic->lpbiOutput, pic->lpInput, pic->lpOutput);
  else
    return FUNC4(pi, pic->lpbiOutput, pic->lpInput, pic->lpOutput);
}