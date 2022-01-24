#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  scalar_t__ uint16 ;
typedef  int sint16 ;
struct TYPE_10__ {int* p; } ;
typedef  TYPE_1__* STREAM ;
typedef  int /*<<< orphan*/  RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
#define  RDP_ORDER_BMPCACHE 133 
#define  RDP_ORDER_BMPCACHE2 132 
#define  RDP_ORDER_COLCACHE 131 
#define  RDP_ORDER_FONTCACHE 130 
#define  RDP_ORDER_RAW_BMPCACHE 129 
#define  RDP_ORDER_RAW_BMPCACHE2 128 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void
FUNC8(RDPCLIENT * This, STREAM s)
{
	/* The length isn't calculated correctly by the server.
	 * For very compact orders the length becomes negative
	 * so a signed integer must be used. */
	uint16 length;
	uint16 flags;
	uint8 type;
	uint8 *next_order;

	FUNC0(s, length);
	FUNC0(s, flags);	/* used by bmpcache2 */
	FUNC1(s, type);

	next_order = s->p + (sint16) length + 7;

	switch (type)
	{
		case RDP_ORDER_RAW_BMPCACHE:
			FUNC6(This, s);
			break;

		case RDP_ORDER_COLCACHE:
			FUNC4(This, s);
			break;

		case RDP_ORDER_BMPCACHE:
			FUNC2(This, s);
			break;

		case RDP_ORDER_FONTCACHE:
			FUNC5(This, s);
			break;

		case RDP_ORDER_RAW_BMPCACHE2:
			FUNC3(This, s, flags, False);	/* uncompressed */
			break;

		case RDP_ORDER_BMPCACHE2:
			FUNC3(This, s, flags, True);	/* compressed */
			break;

		default:
			FUNC7("secondary order %d\n", type);
	}

	s->p = next_order;
}