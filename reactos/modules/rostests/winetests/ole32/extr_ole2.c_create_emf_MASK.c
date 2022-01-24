#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hEnhMetaFile; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pUnkForRelease; int /*<<< orphan*/  tymed; } ;
typedef  TYPE_1__ STGMEDIUM ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TYMED_ENHMF ; 
 TYPE_3__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(STGMEDIUM *med)
{
    HDC hdc = FUNC1(NULL, NULL, NULL, NULL);

    FUNC2(hdc, 0, 0, 150, 300);
    med->tymed = TYMED_ENHMF;
    FUNC3(med)->hEnhMetaFile = FUNC0(hdc);
    med->pUnkForRelease = NULL;
}