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
typedef  int uint32_t ;
struct wl_pointer {int dummy; } ;
struct seat_data {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
#define  BTN_LEFT 132 
#define  BTN_MIDDLE 131 
#define  BTN_RIGHT 130 
 int MOUSE_BUTTON_CENTER ; 
 int MOUSE_BUTTON_LEFT ; 
 int MOUSE_BUTTON_RIGHT ; 
#define  WL_POINTER_BUTTON_STATE_PRESSED 129 
#define  WL_POINTER_BUTTON_STATE_RELEASED 128 
 int /*<<< orphan*/  FUNC0 (struct seat_data*,struct wl_pointer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *data, struct wl_pointer *pointer,
                              uint32_t serial, uint32_t time,
                              uint32_t keycode, uint32_t state)
{
    struct seat_data *sd = data;
    int button;

    FUNC0(sd, pointer);

    switch (keycode)
    {
        case BTN_LEFT:
            button = MOUSE_BUTTON_LEFT;
            break;
        case BTN_RIGHT:
            button = MOUSE_BUTTON_RIGHT;
            break;
        case BTN_MIDDLE:
            button = MOUSE_BUTTON_CENTER;
            break;
        default:
            return;
    }

    switch (state)
    {
        case WL_POINTER_BUTTON_STATE_RELEASED:
            FUNC2(sd->owner, button);
            break;
        case WL_POINTER_BUTTON_STATE_PRESSED:
            FUNC1(sd->owner, button);
            break;
    }

    (void) serial; (void) time;
}