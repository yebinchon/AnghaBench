#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vlc_va_t ;
struct TYPE_8__ {scalar_t__* hw_surface; int /*<<< orphan*/  va_pool; } ;
typedef  TYPE_2__ vlc_va_sys_t ;
typedef  int /*<<< orphan*/  vlc_va_surface_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/ * context; } ;
typedef  TYPE_3__ picture_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int VLC_ENOITEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(vlc_va_t *va, picture_t *pic, uint8_t **data)
{
    vlc_va_sys_t *sys = va->sys;
    vlc_va_surface_t *va_surface = FUNC2(sys->va_pool);
    if (FUNC1(va_surface == NULL))
        return VLC_ENOITEM;
    pic->context = FUNC0(va, va_surface);
    if (FUNC1(pic->context == NULL))
    {
        FUNC4(va_surface);
        return VLC_ENOITEM;
    }
    *data = (uint8_t*)sys->hw_surface[FUNC3(va_surface)];
    return VLC_SUCCESS;
}