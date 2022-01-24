#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int VARTYPE ;
typedef  int /*<<< orphan*/  VARIANTARG ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  dwInFlags; int /*<<< orphan*/  cDig; } ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  TYPE_1__ NUMPARSE ;
typedef  int /*<<< orphan*/  LCID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUMPRS_STD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(OLECHAR* pStrIn, LCID lcid, ULONG ulFlags,
                                      void* pOut, VARTYPE vt)
{
  VARIANTARG dstVar;
  HRESULT hRet;
  NUMPARSE np;
  BYTE rgb[1024];

  /* Use VarParseNumFromStr/VarNumFromParseNum as MSDN indicates */
  np.cDig = FUNC0(rgb);
  np.dwInFlags = NUMPRS_STD;

  hRet = FUNC4(pStrIn, lcid, ulFlags, &np, rgb);

  if (FUNC1(hRet))
  {
    /* 1 << vt gives us the VTBIT constant for the destination number type */
    hRet = FUNC3(&np, rgb, 1 << vt, &dstVar);
    if (FUNC1(hRet))
      FUNC2(&dstVar, vt, pOut);
  }
  return hRet;
}