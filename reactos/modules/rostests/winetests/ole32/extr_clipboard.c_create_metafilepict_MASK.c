#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int xExt; int yExt; int /*<<< orphan*/  hMF; int /*<<< orphan*/  mm; } ;
typedef  TYPE_1__ METAFILEPICT ;
typedef  int /*<<< orphan*/  HMETAFILEPICT ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MM_ANISOTROPIC ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static HMETAFILEPICT FUNC4(void)
{
    HGLOBAL ret = FUNC0(GMEM_MOVEABLE, sizeof(METAFILEPICT));
    METAFILEPICT *mf = FUNC1(ret);
    mf->mm = MM_ANISOTROPIC;
    mf->xExt = 100;
    mf->yExt = 200;
    mf->hMF = FUNC3();
    FUNC2(ret);
    return ret;
}