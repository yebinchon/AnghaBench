#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ uint16 ;
struct TYPE_15__ {int /*<<< orphan*/  last_formats_length; int /*<<< orphan*/  last_formats; } ;
struct TYPE_17__ {TYPE_1__ cliprdr; } ;
struct TYPE_16__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__* STREAM ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
#define  CLIPRDR_CONNECT 132 
#define  CLIPRDR_DATA_REQUEST 131 
#define  CLIPRDR_DATA_RESPONSE 130 
 scalar_t__ CLIPRDR_ERROR ; 
#define  CLIPRDR_FORMAT_ACK 129 
#define  CLIPRDR_FORMAT_ANNOUNCE 128 
 int /*<<< orphan*/  CLIPRDR_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC11(RDPCLIENT * This, STREAM s)
{
	uint16 type, status;
	uint32 length, format;
	uint8 *data;

	FUNC3(s, type);
	FUNC3(s, status);
	FUNC4(s, length);
	data = s->p;

	FUNC0(("CLIPRDR recv: type=%d, status=%d, length=%d\n", type, status, length));

	if (status == CLIPRDR_ERROR)
	{
		switch (type)
		{
			case CLIPRDR_FORMAT_ACK:
				/* FIXME: We seem to get this when we send an announce while the server is
				   still processing a paste. Try sending another announce. */
				FUNC1(This, This->cliprdr.last_formats,
								    This->cliprdr.last_formats_length);
				break;
			case CLIPRDR_DATA_RESPONSE:
				FUNC8(This);
				break;
			default:
				FUNC0(("CLIPRDR error (type=%d)\n", type));
		}

		return;
	}

	switch (type)
	{
		case CLIPRDR_CONNECT:
			FUNC9(This);
			break;
		case CLIPRDR_FORMAT_ANNOUNCE:
			FUNC5(This, data, length);
			FUNC2(This, CLIPRDR_FORMAT_ACK, CLIPRDR_RESPONSE, NULL, 0);
			return;
		case CLIPRDR_FORMAT_ACK:
			break;
		case CLIPRDR_DATA_REQUEST:
			FUNC4(s, format);
			FUNC7(This, format);
			break;
		case CLIPRDR_DATA_RESPONSE:
			FUNC6(This, data, length);
			break;
		case 7:	/* TODO: W2K3 SP1 sends this on connect with a value of 1 */
			break;
		default:
			FUNC10("CLIPRDR packet type %d\n", type);
	}
}