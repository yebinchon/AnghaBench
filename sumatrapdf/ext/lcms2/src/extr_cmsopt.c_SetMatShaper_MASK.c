#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * n; } ;
typedef  TYPE_2__ cmsVEC3 ;
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsPipeline ;
struct TYPE_9__ {TYPE_1__* v; } ;
typedef  TYPE_3__ cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  scalar_t__ cmsBool ;
struct TYPE_10__ {void** Off; void*** Mat; int /*<<< orphan*/  Shaper2B; int /*<<< orphan*/  Shaper2G; int /*<<< orphan*/  Shaper2R; int /*<<< orphan*/  Shaper1B; int /*<<< orphan*/  Shaper1G; int /*<<< orphan*/  Shaper1R; } ;
struct TYPE_7__ {int /*<<< orphan*/ * n; } ;
typedef  TYPE_4__ MatShaper8Data ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DupMatShaper ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FreeMatShaper ; 
 int /*<<< orphan*/  MatShaperEval16 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsBool FUNC7(cmsContext ContextID, cmsPipeline* Dest, cmsToneCurve* Curve1[3], cmsMAT3* Mat, cmsVEC3* Off, cmsToneCurve* Curve2[3], cmsUInt32Number* OutputFormat)
{
    MatShaper8Data* p;
    int i, j;
    cmsBool Is8Bits = FUNC4(*OutputFormat);

    // Allocate a big chuck of memory to store precomputed tables
    p = (MatShaper8Data*) FUNC5(ContextID, sizeof(MatShaper8Data));
    if (p == NULL) return FALSE;

    // Precompute tables
    FUNC1(ContextID, p ->Shaper1R, Curve1[0]);
    FUNC1(ContextID, p ->Shaper1G, Curve1[1]);
    FUNC1(ContextID, p ->Shaper1B, Curve1[2]);

    FUNC2(ContextID, p ->Shaper2R, Curve2[0], Is8Bits);
    FUNC2(ContextID, p ->Shaper2G, Curve2[1], Is8Bits);
    FUNC2(ContextID, p ->Shaper2B, Curve2[2], Is8Bits);

    // Convert matrix to nFixed14. Note that those values may take more than 16 bits
    for (i=0; i < 3; i++) {
        for (j=0; j < 3; j++) {
            p ->Mat[i][j] = FUNC0(Mat->v[i].n[j]);
        }
    }

    for (i=0; i < 3; i++) {

        if (Off == NULL) {
            p ->Off[i] = 0;
        }
        else {
            p ->Off[i] = FUNC0(Off->n[i]);
        }
    }

    // Mark as optimized for faster formatter
    if (Is8Bits)
        *OutputFormat |= FUNC3(1);

    // Fill function pointers
    FUNC6(ContextID, Dest, MatShaperEval16, (void*) p, FreeMatShaper, DupMatShaper);
    return TRUE;
}