#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/ * LPCBITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  CodecInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ICERR_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC4(CodecInfo *pi, LPCBITMAPINFOHEADER lpbiIn,
			       LPCBITMAPINFOHEADER lpbiOut)
{
  /* pre-condition */
  FUNC3(pi != NULL);

  FUNC2("(%p,%p,%p)\n",pi,lpbiIn,lpbiOut);

  /* check parameter -- need at least one format */
  if (lpbiIn == NULL && lpbiOut == NULL)
    return 0;
  /* check if the given format is supported */
  if (FUNC0(pi, lpbiIn, lpbiOut) != ICERR_OK)
    return 0;

  /* the worst case is coding the complete image in absolute mode. */
  if (lpbiIn)
    return FUNC1(lpbiIn);
  else
    return FUNC1(lpbiOut);
}