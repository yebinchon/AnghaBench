#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int VARTYPE ;
typedef  scalar_t__ ULONG ;
typedef  unsigned int UINT ;
struct TYPE_6__ {scalar_t__ cbElements; scalar_t__ rgsabound; int /*<<< orphan*/  fFeatures; } ;
typedef  int /*<<< orphan*/  SAFEARRAYBOUND ;
typedef  TYPE_1__ SAFEARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  FADF_BSTR ; 
 int /*<<< orphan*/  FADF_DISPATCH ; 
 int /*<<< orphan*/  FADF_UNKNOWN ; 
 int /*<<< orphan*/  FADF_VARIANT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
#define  VT_BSTR 131 
#define  VT_DISPATCH 130 
#define  VT_UNKNOWN 129 
#define  VT_VARIANT 128 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static SAFEARRAY* FUNC6(VARTYPE vt, UINT cDims, const SAFEARRAYBOUND *rgsabound, ULONG ulSize)
{
  SAFEARRAY *psa = NULL;
  unsigned int i;

  if (!rgsabound)
    return NULL;

  if (FUNC1(FUNC3(vt, cDims, &psa)))
  {
    switch (vt)
    {
      case VT_BSTR:     psa->fFeatures |= FADF_BSTR; break;
      case VT_UNKNOWN:  psa->fFeatures |= FADF_UNKNOWN; break;
      case VT_DISPATCH: psa->fFeatures |= FADF_DISPATCH; break;
      case VT_VARIANT:  psa->fFeatures |= FADF_VARIANT; break;
    }

    for (i = 0; i < cDims; i++)
      FUNC5(psa->rgsabound + i, rgsabound + cDims - 1 - i, sizeof(SAFEARRAYBOUND));

    if (ulSize)
      psa->cbElements = ulSize;

    if (!psa->cbElements || FUNC0(FUNC2(psa)))
    {
      FUNC4(psa);
      psa = NULL;
    }
  }
  return psa;
}