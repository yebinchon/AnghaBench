#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
typedef  scalar_t__ uint16 ;
struct TYPE_12__ {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/ * p; int /*<<< orphan*/ * end; } ;
struct TYPE_11__ {scalar_t__ mcs_id; int /*<<< orphan*/  (* process ) (TYPE_3__*,TYPE_2__*) ;TYPE_2__ in; } ;
typedef  TYPE_1__ VCHANNEL ;
struct TYPE_13__ {unsigned int num_channels; TYPE_1__* channels; } ;
typedef  TYPE_2__* STREAM ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
 int CHANNEL_FLAG_FIRST ; 
 int CHANNEL_FLAG_LAST ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

void
FUNC6(RDPCLIENT * This, STREAM s, uint16 mcs_channel)
{
	uint32 length, flags;
	uint32 thislength;
	VCHANNEL *channel = NULL;
	unsigned int i;
	STREAM in;

	for (i = 0; i < This->num_channels; i++)
	{
		channel = &This->channels[i];
		if (channel->mcs_id == mcs_channel)
			break;
	}

	if (i >= This->num_channels)
		return;

	FUNC1(s, length);
	FUNC1(s, flags);
	if ((flags & CHANNEL_FLAG_FIRST) && (flags & CHANNEL_FLAG_LAST))
	{
		/* single fragment - pass straight up */
		channel->process(This, s);
	}
	else
	{
		/* add fragment to defragmentation buffer */
		in = &channel->in;
		if (flags & CHANNEL_FLAG_FIRST)
		{
			if (length > in->size)
			{
				in->data = (uint8 *) FUNC5(in->data, length);
				in->size = length;
			}
			in->p = in->data;
		}

		thislength = FUNC0(s->end - s->p, in->data + in->size - in->p);
		FUNC2(in->p, s->p, thislength);
		in->p += thislength;

		if (flags & CHANNEL_FLAG_LAST)
		{
			in->end = in->p;
			in->p = in->data;
			channel->process(This, in);
		}
	}
}