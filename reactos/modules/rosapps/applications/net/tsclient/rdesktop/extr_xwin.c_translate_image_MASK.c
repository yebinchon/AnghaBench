#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_17__ {int depth; int bpp; scalar_t__ no_translate_image; } ;
struct TYPE_18__ {int server_depth; TYPE_1__ xwin; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static uint8 *
FUNC14(RDPCLIENT * This, int width, int height, uint8 * data)
{
	int size;
	uint8 *out;
	uint8 *end;

	/*
	   If RDP depth and X Visual depths match,
	   and arch(endian) matches, no need to translate:
	   just return data.
	   Note: select_visual should've already ensured g_no_translate
	   is only set for compatible depths, but the RDP depth might've
	   changed during connection negotiations.
	 */
	if (This->xwin.no_translate_image)
	{
		if ((This->xwin.depth == 15 && This->server_depth == 15) ||
		    (This->xwin.depth == 16 && This->server_depth == 16) ||
		    (This->xwin.depth == 24 && This->server_depth == 24))
			return data;
	}

	size = width * height * (This->xwin.bpp / 8);
	out = (uint8 *) FUNC13(size);
	end = out + size;

	switch (This->server_depth)
	{
		case 24:
			switch (This->xwin.bpp)
			{
				case 32:
					FUNC8(This, data, out, end);
					break;
				case 24:
					FUNC7(This, data, out, end);
					break;
				case 16:
					FUNC6(This, data, out, end);
					break;
			}
			break;
		case 16:
			switch (This->xwin.bpp)
			{
				case 32:
					FUNC5(This, (uint16 *) data, out, end);
					break;
				case 24:
					FUNC4(This, (uint16 *) data, out, end);
					break;
				case 16:
					FUNC3(This, (uint16 *) data, out, end);
					break;
			}
			break;
		case 15:
			switch (This->xwin.bpp)
			{
				case 32:
					FUNC2(This, (uint16 *) data, out, end);
					break;
				case 24:
					FUNC1(This, (uint16 *) data, out, end);
					break;
				case 16:
					FUNC0(This, (uint16 *) data, out, end);
					break;
			}
			break;
		case 8:
			switch (This->xwin.bpp)
			{
				case 8:
					FUNC12(This, data, out, end);
					break;
				case 16:
					FUNC9(This, data, out, end);
					break;
				case 24:
					FUNC10(This, data, out, end);
					break;
				case 32:
					FUNC11(This, data, out, end);
					break;
			}
			break;
	}
	return out;
}