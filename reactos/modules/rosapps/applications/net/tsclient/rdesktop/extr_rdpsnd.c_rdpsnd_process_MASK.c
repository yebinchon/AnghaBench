#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int uint32 ;
typedef  size_t uint16 ;
struct TYPE_16__ {size_t current_format; void* device_open; int /*<<< orphan*/ * formats; } ;
struct TYPE_18__ {TYPE_1__ rdpsnd; } ;
struct TYPE_17__ {scalar_t__ p; scalar_t__ end; } ;
typedef  TYPE_2__* STREAM ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  void* BOOL ;

/* Variables and functions */
 void* False ; 
 size_t MAX_FORMATS ; 
#define  RDPSND_CLOSE 132 
#define  RDPSND_NEGOTIATE 131 
#define  RDPSND_SERVERTICK 130 
#define  RDPSND_SET_VOLUME 129 
#define  RDPSND_WRITE 128 
 void* True ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,size_t,int) ; 

__attribute__((used)) static void
FUNC16(RDPCLIENT * This, STREAM s)
{
	uint8 type;
	uint16 datalen;
	uint32 volume;
	static uint16 tick, format;
	static uint8 packet_index;
	static BOOL awaiting_data_packet;

#ifdef RDPSND_DEBUG
	printf("RDPSND recv:\n");
	hexdump(s->p, s->end - s->p);
#endif

	if (awaiting_data_packet)
	{
		if (format >= MAX_FORMATS)
		{
			FUNC0("RDPSND: Invalid format index\n");
			return;
		}

		if (!This->rdpsnd.device_open || (format != This->rdpsnd.current_format))
		{
			if (!This->rdpsnd.device_open && !FUNC12())
			{
				FUNC9(This, tick, packet_index);
				return;
			}
			if (!FUNC13(&This->rdpsnd.formats[format]))
			{
				FUNC9(This, tick, packet_index);
				FUNC11();
				This->rdpsnd.device_open = False;
				return;
			}
			This->rdpsnd.device_open = True;
			This->rdpsnd.current_format = format;
		}

		FUNC15(s, tick, packet_index);
		awaiting_data_packet = False;
		return;
	}

	FUNC4(s, type);
	FUNC5(s, 1);	/* unknown? */
	FUNC2(s, datalen);

	switch (type)
	{
		case RDPSND_WRITE:
			FUNC2(s, tick);
			FUNC2(s, format);
			FUNC4(s, packet_index);
			awaiting_data_packet = True;
			break;
		case RDPSND_CLOSE:
			FUNC11();
			This->rdpsnd.device_open = False;
			break;
		case RDPSND_NEGOTIATE:
			FUNC7(This, s);
			break;
		case RDPSND_SERVERTICK:
			FUNC8(This, s);
			break;
		case RDPSND_SET_VOLUME:
			FUNC3(s, volume);
			if (This->rdpsnd.device_open)
			{
				FUNC14((volume & 0xffff), (volume & 0xffff0000) >> 16);
			}
			break;
		default:
			FUNC10("RDPSND packet type %d\n", type);
			break;
	}
}