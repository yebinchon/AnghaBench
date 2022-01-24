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
struct TYPE_3__ {int /*<<< orphan*/  use_ex; int /*<<< orphan*/ * hdll; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_1__ d3d9_handle_t ;
typedef  int /*<<< orphan*/  IDirect3D9Ex ;
typedef  int /*<<< orphan*/  IDirect3D9 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDirect3D9Ex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(d3d9_handle_t *hd3d, IDirect3D9 *dev)
{
    hd3d->obj = dev;
    FUNC1( hd3d->obj );
    hd3d->hdll = NULL;

    void *pv = NULL;
    hd3d->use_ex = FUNC3(FUNC2(dev, &IID_IDirect3D9Ex, &pv));
    if (hd3d->use_ex && pv)
        FUNC0((IDirect3D9Ex*) pv);
}