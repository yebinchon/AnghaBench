#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ biWidth; scalar_t__ biHeight; scalar_t__ biBitCount; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__* LPCBITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  CodecInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ICERR_BADFORMAT ; 
 int /*<<< orphan*/  ICERR_BADPARAM ; 
 int /*<<< orphan*/  ICERR_OK ; 
 int /*<<< orphan*/  ICERR_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT FUNC4(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
			       LPCBITMAPINFOHEADER lpbiOut)
{
  LRESULT hr = ICERR_OK;

  FUNC0("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);

  /* pre-condition */
  FUNC1(pi != NULL);

  /* need at least one format */
  if (lpbiIn == NULL && lpbiOut == NULL)
    return ICERR_BADPARAM;

  /* check input format if given */
  if (lpbiIn != NULL) {
    if (!FUNC3(lpbiIn) && !FUNC2(lpbiIn))
      return ICERR_BADFORMAT;
  }

  /* check output format if given */
  if (lpbiOut != NULL) {
    if (!FUNC2(lpbiOut))
      hr = ICERR_BADFORMAT;

    if (lpbiIn != NULL) {
      if (lpbiIn->biWidth  != lpbiOut->biWidth)
        hr = ICERR_UNSUPPORTED;
      if (lpbiIn->biHeight != lpbiOut->biHeight)
        hr = ICERR_UNSUPPORTED;
      if (lpbiIn->biBitCount > lpbiOut->biBitCount)
        hr = ICERR_UNSUPPORTED;
    }
  }

  return hr;
}