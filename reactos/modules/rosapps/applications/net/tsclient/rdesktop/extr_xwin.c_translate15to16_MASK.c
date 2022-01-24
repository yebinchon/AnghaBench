#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_4__ {scalar_t__ host_be; scalar_t__ xserver_be; } ;
struct TYPE_5__ {TYPE_1__ xwin; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  PixelColour ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(RDPCLIENT * This, const uint16 * data, uint8 * out, uint8 * end)
{
	uint16 pixel;
	uint16 value;
	PixelColour pc;

	if (This->xwin.xserver_be)
	{
		while (out < end)
		{
			pixel = *(data++);
			if (This->xwin.host_be)
			{
				FUNC1(pixel);
			}
			FUNC4(pixel, pc);
			value = FUNC3(pc);
			FUNC0(out, value);
		}
	}
	else
	{
		while (out < end)
		{
			pixel = *(data++);
			if (This->xwin.host_be)
			{
				FUNC1(pixel);
			}
			FUNC4(pixel, pc);
			value = FUNC3(pc);
			FUNC2(out, value);
		}
	}
}