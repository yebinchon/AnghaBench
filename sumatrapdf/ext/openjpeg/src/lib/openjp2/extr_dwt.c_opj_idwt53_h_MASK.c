#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* mem; int sn; int dn; scalar_t__ cas; } ;
typedef  TYPE_1__ opj_dwt_t ;
typedef  int OPJ_UINT32 ;
typedef  int OPJ_INT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const,int const,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const,int const,int*) ; 

__attribute__((used)) static void FUNC5(const opj_dwt_t *dwt,
                         OPJ_INT32* tiledp)
{
#ifdef STANDARD_SLOW_VERSION
    /* For documentation purpose */
    opj_dwt_interleave_h(dwt, tiledp);
    opj_dwt_decode_1(dwt);
    memcpy(tiledp, dwt->mem, (OPJ_UINT32)(dwt->sn + dwt->dn) * sizeof(OPJ_INT32));
#else
    const OPJ_INT32 sn = dwt->sn;
    const OPJ_INT32 len = sn + dwt->dn;
    if (dwt->cas == 0) { /* Left-most sample is on even coordinate */
        if (len > 1) {
            FUNC3(dwt->mem, sn, len, tiledp);
        } else {
            /* Unmodified value */
        }
    } else { /* Left-most sample is on odd coordinate */
        if (len == 1) {
            tiledp[0] /= 2;
        } else if (len == 2) {
            OPJ_INT32* out = dwt->mem;
            const OPJ_INT32* in_even = &tiledp[sn];
            const OPJ_INT32* in_odd = &tiledp[0];
            out[1] = in_odd[0] - ((in_even[0] + 1) >> 1);
            out[0] = in_even[0] + out[1];
            FUNC0(tiledp, dwt->mem, (OPJ_UINT32)len * sizeof(OPJ_INT32));
        } else if (len > 2) {
            FUNC4(dwt->mem, sn, len, tiledp);
        }
    }
#endif
}