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
typedef  int uint8 ;
struct TYPE_3__ {scalar_t__ desktop_save; scalar_t__ polygon_ellipse_orders; scalar_t__ bitmap_cache; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 scalar_t__ False ; 
 int RDP_CAPLEN_ORDER ; 
 int RDP_CAPSET_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(RDPCLIENT * This, STREAM s)
{
	uint8 order_caps[32];

	FUNC0(order_caps, 0, 32);
	order_caps[0] = 1;	/* dest blt */
	order_caps[1] = 1;	/* pat blt */
	order_caps[2] = 1;	/* screen blt */
	order_caps[3] = (This->bitmap_cache ? 1 : 0);	/* memblt */
	order_caps[4] = 0;	/* triblt */
	order_caps[8] = 1;	/* line */
	order_caps[9] = 1;	/* line */
	order_caps[10] = 1;	/* rect */
	order_caps[11] = (This->desktop_save ? 1 : 0);	/* desksave */
	order_caps[13] = 1;	/* memblt */
	order_caps[14] = 1;	/* triblt */
	order_caps[20] = (This->polygon_ellipse_orders ? 1 : 0);	/* polygon */
	order_caps[21] = (This->polygon_ellipse_orders ? 1 : 0);	/* polygon2 */
	order_caps[22] = 1;	/* polyline */
	order_caps[25] = (This->polygon_ellipse_orders ? 1 : 0);	/* ellipse */
	order_caps[26] = (This->polygon_ellipse_orders ? 1 : 0);	/* ellipse2 */
	order_caps[27] = 1;	/* text2 */
	FUNC2(s, RDP_CAPSET_ORDER);
	FUNC2(s, RDP_CAPLEN_ORDER);

	FUNC6(s, 20);	/* Terminal desc, pad */
	FUNC2(s, 1);	/* Cache X granularity */
	FUNC2(s, 20);	/* Cache Y granularity */
	FUNC1(s, 0);	/* Pad */
	FUNC2(s, 1);	/* Max order level */
	FUNC2(s, 0x147);	/* Number of fonts */
	FUNC2(s, 0x2a);	/* Capability flags */
	FUNC5(s, order_caps, 32);	/* Orders supported */
	FUNC2(s, 0x6a1);	/* Text capability flags */
	FUNC6(s, 6);	/* Pad */
	FUNC4(s, This->desktop_save == False ? 0 : 0x38400);	/* Desktop cache size */
	FUNC3(s, 0);	/* Unknown */
	FUNC4(s, 0x4e4);	/* Unknown */
}