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
typedef  size_t cmsUInt32Number ;
struct TYPE_5__ {scalar_t__ nEntries; int /*<<< orphan*/ * Table16; } ;
typedef  TYPE_1__ cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  scalar_t__ cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,double) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
void FUNC4(cmsContext ContextID, cmsIOHANDLER* m, cmsToneCurve* Table)
{
    cmsUInt32Number i;
    cmsFloat64Number gamma;

    if (Table == NULL) return; // Error

    if (Table ->nEntries <= 0) return;  // Empty table

    // Suppress whole if identity
    if (FUNC3(ContextID, Table)) return;

    // Check if is really an exponential. If so, emit "exp"
    gamma = FUNC2(ContextID, Table, 0.001);
     if (gamma > 0) {
            FUNC1(ContextID, m, "{ %g exp } bind ", gamma);
            return;
     }

    FUNC1(ContextID, m, "{ ");

    // Bounds check
    FUNC0(ContextID, m);

    // Emit intepolation code

    // PostScript code                      Stack
    // ===============                      ========================
                                            // v
    FUNC1(ContextID, m, " [");

    for (i=0; i < Table->nEntries; i++) {
        FUNC1(ContextID, m, "%d ", Table->Table16[i]);
    }

    FUNC1(ContextID, m, "] ");                        // v tab

    FUNC1(ContextID, m, "dup ");                      // v tab tab
    FUNC1(ContextID, m, "length 1 sub ");             // v tab dom
    FUNC1(ContextID, m, "3 -1 roll ");                // tab dom v
    FUNC1(ContextID, m, "mul ");                      // tab val2
    FUNC1(ContextID, m, "dup ");                      // tab val2 val2
    FUNC1(ContextID, m, "dup ");                      // tab val2 val2 val2
    FUNC1(ContextID, m, "floor cvi ");                // tab val2 val2 cell0
    FUNC1(ContextID, m, "exch ");                     // tab val2 cell0 val2
    FUNC1(ContextID, m, "ceiling cvi ");              // tab val2 cell0 cell1
    FUNC1(ContextID, m, "3 index ");                  // tab val2 cell0 cell1 tab
    FUNC1(ContextID, m, "exch ");                     // tab val2 cell0 tab cell1
    FUNC1(ContextID, m, "get ");                      // tab val2 cell0 y1
    FUNC1(ContextID, m, "4 -1 roll ");                // val2 cell0 y1 tab
    FUNC1(ContextID, m, "3 -1 roll ");                // val2 y1 tab cell0
    FUNC1(ContextID, m, "get ");                      // val2 y1 y0
    FUNC1(ContextID, m, "dup ");                      // val2 y1 y0 y0
    FUNC1(ContextID, m, "3 1 roll ");                 // val2 y0 y1 y0
    FUNC1(ContextID, m, "sub ");                      // val2 y0 (y1-y0)
    FUNC1(ContextID, m, "3 -1 roll ");                // y0 (y1-y0) val2
    FUNC1(ContextID, m, "dup ");                      // y0 (y1-y0) val2 val2
    FUNC1(ContextID, m, "floor cvi ");                // y0 (y1-y0) val2 floor(val2)
    FUNC1(ContextID, m, "sub ");                      // y0 (y1-y0) rest
    FUNC1(ContextID, m, "mul ");                      // y0 t1
    FUNC1(ContextID, m, "add ");                      // y
    FUNC1(ContextID, m, "65535 div ");                // result

    FUNC1(ContextID, m, " } bind ");
}