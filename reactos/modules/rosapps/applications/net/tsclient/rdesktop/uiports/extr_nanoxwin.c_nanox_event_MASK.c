#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; } ;
struct TYPE_9__ {int changebuttons; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {scalar_t__ fd; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ GR_EVENT_MOUSE ;
typedef  int /*<<< orphan*/  GR_EVENT_KEYSTROKE ;
typedef  TYPE_2__ GR_EVENT_FDINPUT ;
typedef  TYPE_3__ GR_EVENT_BUTTON ;
typedef  TYPE_4__ GR_EVENT ;

/* Variables and functions */
 scalar_t__ GR_EVENT_TYPE_BUTTON_DOWN ; 
 scalar_t__ GR_EVENT_TYPE_BUTTON_UP ; 
 scalar_t__ GR_EVENT_TYPE_FDINPUT ; 
 scalar_t__ GR_EVENT_TYPE_FOCUS_IN ; 
 scalar_t__ GR_EVENT_TYPE_FOCUS_OUT ; 
 scalar_t__ GR_EVENT_TYPE_KEY_DOWN ; 
 scalar_t__ GR_EVENT_TYPE_KEY_UP ; 
 scalar_t__ GR_EVENT_TYPE_MOUSE_MOTION ; 
 scalar_t__ GR_EVENT_TYPE_MOUSE_POSITION ; 
 scalar_t__ GR_EVENT_TYPE_NONE ; 
 scalar_t__ GR_EVENT_TYPE_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int MOUSE_FLAG_BUTTON1 ; 
 int MOUSE_FLAG_BUTTON2 ; 
 int MOUSE_FLAG_DOWN ; 
 int MOUSE_FLAG_MOVE ; 
 int /*<<< orphan*/  RDP_INPUT_MOUSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int g_deactivated ; 
 int g_ext_disc_reason ; 
 scalar_t__ g_sck ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6(GR_EVENT * ev)
{
  GR_EVENT_MOUSE * event_mouse;
  GR_EVENT_BUTTON * event_button;
  GR_EVENT_FDINPUT * event_fdinput;
  GR_EVENT_KEYSTROKE * event_keystroke;

  do
  {
    if (ev->type == GR_EVENT_TYPE_FDINPUT) /* 12 */
    {
      event_fdinput = (GR_EVENT_FDINPUT *) ev;
      if (event_fdinput->fd == g_sck)
      {
        if (!FUNC4(&g_deactivated, &g_ext_disc_reason))
        {
          FUNC2(stderr, "rdp_loop in nanox_event exit codes %d %d\n",
                  g_deactivated, g_ext_disc_reason);
          FUNC1(1);
        }
      }
    }
    else if (ev->type == GR_EVENT_TYPE_BUTTON_DOWN) /* 2 */
    {
      event_button = (GR_EVENT_BUTTON *) ev;
      if (event_button->changebuttons & 4) /* left */
      {
        FUNC5(0, RDP_INPUT_MOUSE, MOUSE_FLAG_DOWN | MOUSE_FLAG_BUTTON1,
                       event_button->x, event_button->y);
      }
      else if (event_button->changebuttons & 1) /* right */
      {
        FUNC5(0, RDP_INPUT_MOUSE, MOUSE_FLAG_DOWN | MOUSE_FLAG_BUTTON2,
                       event_button->x, event_button->y);
      }
    }
    else if (ev->type == GR_EVENT_TYPE_BUTTON_UP) /* 3 */
    {
      event_button = (GR_EVENT_BUTTON *) ev;
      if (event_button->changebuttons & 4) /* left */
      {
        FUNC5(0, RDP_INPUT_MOUSE, MOUSE_FLAG_BUTTON1,
                       event_button->x, event_button->y);
      }
      else if (event_button->changebuttons & 1) /* right */
      {
        FUNC5(0, RDP_INPUT_MOUSE, MOUSE_FLAG_BUTTON2,
                       event_button->x, event_button->y);
      }
    }
    else if (ev->type == GR_EVENT_TYPE_MOUSE_MOTION) /* 6 */
    {
      event_mouse = (GR_EVENT_MOUSE *) ev;
      FUNC5(0, RDP_INPUT_MOUSE, MOUSE_FLAG_MOVE,
                     event_mouse->x, event_mouse->y);
    }
    else if (ev->type == GR_EVENT_TYPE_MOUSE_POSITION) /* 7 */
    {
      /* use GR_EVENT_TYPE_MOUSE_MOTION */
    }
    else if (ev->type == GR_EVENT_TYPE_KEY_DOWN) /* 8 */
    {
      event_keystroke = (GR_EVENT_KEYSTROKE *) ev;
      FUNC3(event_keystroke, 1);
    }
    else if (ev->type == GR_EVENT_TYPE_KEY_UP) /* 9 */
    {
      event_keystroke = (GR_EVENT_KEYSTROKE *) ev;
      FUNC3(event_keystroke, 0);
    }
    else if (ev->type == GR_EVENT_TYPE_FOCUS_IN) /* 10 */
    {
    }
    else if (ev->type == GR_EVENT_TYPE_FOCUS_OUT) /* 11 */
    {
    }
    else if (ev->type == GR_EVENT_TYPE_UPDATE) /* 13 */
    {
    }
    FUNC0(ev);
  } while (ev->type != GR_EVENT_TYPE_NONE);
}