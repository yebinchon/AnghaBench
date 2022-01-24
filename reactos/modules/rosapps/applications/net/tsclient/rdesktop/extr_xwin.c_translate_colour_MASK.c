#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_9__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_8__ {int server_depth; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  TYPE_2__ PixelColour ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__) ; 

__attribute__((used)) static uint32
FUNC4(RDPCLIENT * This, uint32 colour)
{
	PixelColour pc;
	switch (This->server_depth)
	{
		case 15:
			FUNC1(colour, pc);
			break;
		case 16:
			FUNC2(colour, pc);
			break;
		case 24:
			FUNC3(colour, pc);
			break;
		default:
			/* Avoid warning */
			pc.red = 0;
			pc.green = 0;
			pc.blue = 0;
			break;
	}
	return FUNC0(pc);
}