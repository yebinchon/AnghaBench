#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int w; int h; } ;
typedef  TYPE_1__ opj_t1_t ;
typedef  int OPJ_INT32 ;

/* Variables and functions */
 int J2K_CCP_CBLKSTY_VSC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC4(
    opj_t1_t *t1,
    OPJ_INT32 bpno,
    OPJ_INT32 cblksty)
{
    if (t1->w == 64 && t1->h == 64) {
        if (cblksty & J2K_CCP_CBLKSTY_VSC) {
            FUNC1(t1, bpno);
        } else {
            FUNC0(t1, bpno);
        }
    } else {
        if (cblksty & J2K_CCP_CBLKSTY_VSC) {
            FUNC3(t1, bpno);
        } else {
            FUNC2(t1, bpno);
        }
    }
}