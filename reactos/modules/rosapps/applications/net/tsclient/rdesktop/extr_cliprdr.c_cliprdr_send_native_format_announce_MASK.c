#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_5__ {int /*<<< orphan*/  last_formats_length; int /*<<< orphan*/ * last_formats; } ;
struct TYPE_6__ {TYPE_1__ cliprdr; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPRDR_FORMAT_ANNOUNCE ; 
 int /*<<< orphan*/  CLIPRDR_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(RDPCLIENT * This, uint8 * formats_data, uint32 formats_data_length)
{
	FUNC0(("cliprdr_send_native_format_announce\n"));

	FUNC1(This, CLIPRDR_FORMAT_ANNOUNCE, CLIPRDR_REQUEST, formats_data,
			    formats_data_length);

	if (formats_data != This->cliprdr.last_formats)
	{
		if (This->cliprdr.last_formats)
			FUNC3(This->cliprdr.last_formats);

		This->cliprdr.last_formats = FUNC4(formats_data_length);
		FUNC2(This->cliprdr.last_formats, formats_data, formats_data_length);
		This->cliprdr.last_formats_length = formats_data_length;
	}
}