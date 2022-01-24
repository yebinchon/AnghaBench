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
struct TYPE_6__ {int /*<<< orphan*/  hBitmap; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pUnkForRelease; int /*<<< orphan*/  tymed; } ;
typedef  TYPE_1__ STGMEDIUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TYMED_GDI ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2( STGMEDIUM *med )
{
    med->tymed = TYMED_GDI;
    FUNC1(med)->hBitmap = FUNC0( 1, 1, 1, 1, NULL );
    med->pUnkForRelease = NULL;
}