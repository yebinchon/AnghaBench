#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {scalar_t__ rdp_clipboard_request_format; int /*<<< orphan*/  rdesktop_is_selection_owner; } ;
struct TYPE_7__ {TYPE_1__ xclip; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  RDP_CF_TEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(RDPCLIENT * This, uint8 * data, uint32 length)
{
	if (This->xclip.rdp_clipboard_request_format != 0)
	{
		FUNC0(This, data, length);
		This->xclip.rdp_clipboard_request_format = 0;
		if (!This->xclip.rdesktop_is_selection_owner)
			FUNC1(This, RDP_CF_TEXT);
	}
}