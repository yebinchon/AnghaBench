#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* eDy; void* eDx; void* eM22; void* eM21; void* eM12; void* eM11; } ;
typedef  TYPE_1__ XFORML ;
typedef  int /*<<< orphan*/  XFORM ;
struct TYPE_5__ {int /*<<< orphan*/  efDy; int /*<<< orphan*/  efDx; int /*<<< orphan*/  efM22; int /*<<< orphan*/  efM21; int /*<<< orphan*/  efM12; int /*<<< orphan*/  efM11; } ;
typedef  TYPE_2__ MATRIX ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(XFORM *pxform, const MATRIX *pmx)
{
    XFORML *pxforml = (XFORML*)pxform;
    pxforml->eM11 = FUNC0(&pmx->efM11);
    pxforml->eM12 = FUNC0(&pmx->efM12);
    pxforml->eM21 = FUNC0(&pmx->efM21);
    pxforml->eM22 = FUNC0(&pmx->efM22);
    pxforml->eDx = FUNC0(&pmx->efDx);
    pxforml->eDy = FUNC0(&pmx->efDy);
}