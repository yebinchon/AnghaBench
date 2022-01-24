#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hMetaFilePict; } ;
struct TYPE_8__ {int xExt; int yExt; int /*<<< orphan*/  hMF; int /*<<< orphan*/  mm; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pUnkForRelease; int /*<<< orphan*/  tymed; } ;
typedef  TYPE_1__ STGMEDIUM ;
typedef  TYPE_2__ METAFILEPICT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MM_ANISOTROPIC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TYMED_MFPICT ; 
 TYPE_4__* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(STGMEDIUM *med)
{
    METAFILEPICT *mf;
    HDC hdc = FUNC1(NULL);

    FUNC5(hdc, 0, 0, 100, 200);

    med->tymed = TYMED_MFPICT;
    FUNC6(med)->hMetaFilePict = FUNC2(GMEM_MOVEABLE, sizeof(METAFILEPICT));
    mf = FUNC3(FUNC6(med)->hMetaFilePict);
    mf->mm = MM_ANISOTROPIC;
    mf->xExt = 100;
    mf->yExt = 200;
    mf->hMF = FUNC0(hdc);
    FUNC4(FUNC6(med)->hMetaFilePict);
    med->pUnkForRelease = NULL;
}