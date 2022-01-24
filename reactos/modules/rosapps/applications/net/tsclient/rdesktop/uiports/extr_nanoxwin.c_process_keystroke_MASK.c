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
typedef  int /*<<< orphan*/  GR_EVENT_KEYSTROKE ;

/* Variables and functions */
 int /*<<< orphan*/  RDP_INPUT_SCANCODE ; 
 int /*<<< orphan*/  RDP_KEYPRESS ; 
 int /*<<< orphan*/  RDP_KEYRELEASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) void static FUNC2(GR_EVENT_KEYSTROKE * event_keystroke, int down)
{
  int sc, ec;

  if (FUNC0(event_keystroke, &sc, &ec) == 0)
  {
    if (down)
    {
      FUNC1(0, RDP_INPUT_SCANCODE, RDP_KEYPRESS, sc, ec);
    }
    else
    {
      FUNC1(0, RDP_INPUT_SCANCODE, RDP_KEYRELEASE, sc, ec);
    }
  }
}