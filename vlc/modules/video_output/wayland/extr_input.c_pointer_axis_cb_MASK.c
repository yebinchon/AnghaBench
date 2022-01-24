#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ wl_fixed_t ;
typedef  int /*<<< orphan*/  vout_window_t ;
typedef  int uint32_t ;
struct wl_pointer {int dummy; } ;
struct seat_data {int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 int MOUSE_BUTTON_WHEEL_DOWN ; 
 int MOUSE_BUTTON_WHEEL_LEFT ; 
 int MOUSE_BUTTON_WHEEL_RIGHT ; 
 int MOUSE_BUTTON_WHEEL_UP ; 
#define  WL_POINTER_AXIS_HORIZONTAL_SCROLL 129 
#define  WL_POINTER_AXIS_VERTICAL_SCROLL 128 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seat_data*,struct wl_pointer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void *data, struct wl_pointer *pointer,
                            uint32_t serial, uint32_t type, wl_fixed_t value)
{
    struct seat_data *sd = data;
    vout_window_t *wnd = sd->owner;
    int button;
    bool plus = value > 0;

    FUNC1(sd, pointer);
    value = FUNC0(value);

    switch (type)
    {
        case WL_POINTER_AXIS_VERTICAL_SCROLL:
            button = plus ? MOUSE_BUTTON_WHEEL_DOWN : MOUSE_BUTTON_WHEEL_UP;
            break;
        case WL_POINTER_AXIS_HORIZONTAL_SCROLL:
            button = plus ? MOUSE_BUTTON_WHEEL_RIGHT : MOUSE_BUTTON_WHEEL_LEFT;
            break;
        default:
            return;
    }

    while (value > 0)
    {
        FUNC2(wnd, button);
        FUNC3(wnd, button);
        value -= FUNC4(10);
    }
    (void) serial;
}