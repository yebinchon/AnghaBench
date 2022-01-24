#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int biBitCount; int biClrUsed; scalar_t__ biSize; } ;
struct TYPE_9__ {int biBitCount; int biClrUsed; int biSize; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  scalar_t__ LRESULT ;
typedef  TYPE_1__* LPCBITMAPINFOHEADER ;
typedef  scalar_t__ LPBYTE ;
typedef  TYPE_2__* LPBITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  CodecInfo ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ ICERR_BADFORMAT ; 
 scalar_t__ ICERR_BADPARAM ; 
 scalar_t__ ICERR_ERROR ; 
 scalar_t__ ICERR_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static LRESULT FUNC4(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
				    LPBITMAPINFOHEADER lpbiOut)
{
  int size;

  FUNC1("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);

  /* pre-condition */
  FUNC2(pi != NULL);

  /* check parameters */
  if (lpbiIn == NULL || lpbiOut == NULL)
    return ICERR_BADPARAM;

  if (FUNC0(pi, lpbiIn, lpbiOut) != ICERR_OK)
    return ICERR_BADFORMAT;

  if (lpbiOut->biBitCount > 8)
    return ICERR_ERROR;

  if (lpbiIn->biBitCount <= 8) {
    if (lpbiIn->biClrUsed > 0)
      size = lpbiIn->biClrUsed;
    else
      size = (1 << lpbiIn->biBitCount);

    lpbiOut->biClrUsed = size;

    FUNC3((LPBYTE)lpbiOut + lpbiOut->biSize, (const BYTE*)lpbiIn + lpbiIn->biSize, size * sizeof(RGBQUAD));
  } /* else could never occur ! */

  return ICERR_OK;
}