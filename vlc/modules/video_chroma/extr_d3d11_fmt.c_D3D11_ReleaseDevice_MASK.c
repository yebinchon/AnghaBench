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
struct TYPE_3__ {scalar_t__ context_mutex; scalar_t__ owner; int /*<<< orphan*/ * d3ddevice; int /*<<< orphan*/ * d3dcontext; } ;
typedef  TYPE_1__ d3d11_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 

void FUNC4(d3d11_device_t *d3d_dev)
{
    if (d3d_dev->d3dcontext)
    {
        FUNC1(d3d_dev->d3dcontext);
        FUNC2(d3d_dev->d3dcontext);
        d3d_dev->d3dcontext = NULL;
    }
    if (d3d_dev->d3ddevice)
    {
        FUNC3(d3d_dev->d3ddevice);
        d3d_dev->d3ddevice = NULL;
    }
#if defined(HAVE_ID3D11VIDEODECODER)
    if( d3d_dev->owner && d3d_dev->context_mutex != INVALID_HANDLE_VALUE )
    {
        CloseHandle( d3d_dev->context_mutex );
        d3d_dev->context_mutex = INVALID_HANDLE_VALUE;
    }
#endif
}