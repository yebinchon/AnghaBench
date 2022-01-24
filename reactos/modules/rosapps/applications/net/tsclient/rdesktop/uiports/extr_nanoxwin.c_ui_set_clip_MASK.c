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
struct TYPE_3__ {int x; int y; int width; int height; } ;
typedef  int /*<<< orphan*/  GR_REGION_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ g_clip ; 
 int /*<<< orphan*/  g_gc ; 

void FUNC3(int x, int y, int cx, int cy)
{
  GR_REGION_ID region;

  g_clip.x = x;
  g_clip.y = y;
  g_clip.width = cx;
  g_clip.height = cy;
  region = FUNC0();
  FUNC2(region, &g_clip);
  FUNC1(g_gc, region); /* can't destroy region here, i guess gc */
                               /* takes owership, if you destroy it */
                               /* clip is reset, hum */
}