#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_8__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
struct TYPE_47__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_45__ {int order_type; int /*<<< orphan*/  text2; int /*<<< orphan*/  ellipse2; int /*<<< orphan*/  ellipse; int /*<<< orphan*/  polyline; int /*<<< orphan*/  polygon2; int /*<<< orphan*/  polygon; int /*<<< orphan*/  triblt; int /*<<< orphan*/  memblt; int /*<<< orphan*/  desksave; int /*<<< orphan*/  rect; int /*<<< orphan*/  line; int /*<<< orphan*/  screenblt; int /*<<< orphan*/  patblt; int /*<<< orphan*/  destblt; TYPE_8__ bounds; } ;
struct TYPE_43__ {TYPE_3__ order_state; } ;
struct TYPE_46__ {scalar_t__ next_packet; TYPE_1__ orders; } ;
struct TYPE_44__ {scalar_t__ p; } ;
typedef  TYPE_2__* STREAM ;
typedef  TYPE_3__ RDP_ORDER_STATE ;
typedef  TYPE_4__ RDPCLIENT ;
typedef  int BOOL ;

/* Variables and functions */
 int RDP_ORDER_BOUNDS ; 
 int RDP_ORDER_CHANGE ; 
 int RDP_ORDER_DELTA ; 
#define  RDP_ORDER_DESKSAVE 141 
#define  RDP_ORDER_DESTBLT 140 
#define  RDP_ORDER_ELLIPSE 139 
#define  RDP_ORDER_ELLIPSE2 138 
 int RDP_ORDER_LASTBOUNDS ; 
#define  RDP_ORDER_LINE 137 
#define  RDP_ORDER_MEMBLT 136 
#define  RDP_ORDER_PATBLT 135 
#define  RDP_ORDER_POLYGON 134 
#define  RDP_ORDER_POLYGON2 133 
#define  RDP_ORDER_POLYLINE 132 
#define  RDP_ORDER_RECT 131 
#define  RDP_ORDER_SCREENBLT 130 
 int RDP_ORDER_SECONDARY ; 
 int RDP_ORDER_STANDARD ; 
#define  RDP_ORDER_TEXT2 129 
#define  RDP_ORDER_TRIBLT 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 

void
FUNC22(RDPCLIENT * This, STREAM s, uint16 num_orders)
{
	RDP_ORDER_STATE *os = &This->orders.order_state;
	uint32 present;
	uint8 order_flags;
	int size, processed = 0;
	BOOL delta;

	while (processed < num_orders)
	{
		FUNC1(s, order_flags);

		if (!(order_flags & RDP_ORDER_STANDARD))
		{
			FUNC0("order parsing failed\n");
			break;
		}

		if (order_flags & RDP_ORDER_SECONDARY)
		{
			FUNC14(This, s);
		}
		else
		{
			if (order_flags & RDP_ORDER_CHANGE)
			{
				FUNC1(s, os->order_type);
			}

			switch (os->order_type)
			{
				case RDP_ORDER_TRIBLT:
				case RDP_ORDER_TEXT2:
					size = 3;
					break;

				case RDP_ORDER_PATBLT:
				case RDP_ORDER_MEMBLT:
				case RDP_ORDER_LINE:
				case RDP_ORDER_POLYGON2:
				case RDP_ORDER_ELLIPSE2:
					size = 2;
					break;

				default:
					size = 1;
			}

			FUNC17(s, &present, order_flags, size);

			if (order_flags & RDP_ORDER_BOUNDS)
			{
				if (!(order_flags & RDP_ORDER_LASTBOUNDS))
					FUNC18(s, &os->bounds);

				FUNC20(This, os->bounds.left,
					    os->bounds.top,
					    os->bounds.right -
					    os->bounds.left + 1,
					    os->bounds.bottom - os->bounds.top + 1);
			}

			delta = order_flags & RDP_ORDER_DELTA;

			switch (os->order_type)
			{
				case RDP_ORDER_DESTBLT:
					FUNC3(This, s, &os->destblt, present, delta);
					break;

				case RDP_ORDER_PATBLT:
					FUNC8(This, s, &os->patblt, present, delta);
					break;

				case RDP_ORDER_SCREENBLT:
					FUNC13(This, s, &os->screenblt, present, delta);
					break;

				case RDP_ORDER_LINE:
					FUNC6(This, s, &os->line, present, delta);
					break;

				case RDP_ORDER_RECT:
					FUNC12(This, s, &os->rect, present, delta);
					break;

				case RDP_ORDER_DESKSAVE:
					FUNC2(This, s, &os->desksave, present, delta);
					break;

				case RDP_ORDER_MEMBLT:
					FUNC7(This, s, &os->memblt, present, delta);
					break;

				case RDP_ORDER_TRIBLT:
					FUNC16(This, s, &os->triblt, present, delta);
					break;

				case RDP_ORDER_POLYGON:
					FUNC9(This, s, &os->polygon, present, delta);
					break;

				case RDP_ORDER_POLYGON2:
					FUNC10(This, s, &os->polygon2, present, delta);
					break;

				case RDP_ORDER_POLYLINE:
					FUNC11(This, s, &os->polyline, present, delta);
					break;

				case RDP_ORDER_ELLIPSE:
					FUNC4(This, s, &os->ellipse, present, delta);
					break;

				case RDP_ORDER_ELLIPSE2:
					FUNC5(This, s, &os->ellipse2, present, delta);
					break;

				case RDP_ORDER_TEXT2:
					FUNC15(This, s, &os->text2, present, delta);
					break;

				default:
					FUNC21("order %d\n", os->order_type);
					return;
			}

			if (order_flags & RDP_ORDER_BOUNDS)
				FUNC19(This);
		}

		processed++;
	}
#if 0
	/* not true when RDP_COMPRESSION is set */
	if (s->p != This->next_packet)
		error("%d bytes remaining\n", (int) (This->next_packet - s->p));
#endif

}