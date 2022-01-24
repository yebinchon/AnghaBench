#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* auto_mode; } ;
struct TYPE_5__ {void* rdpclip; TYPE_1__ xclip; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 void* False ; 
 void* True ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

void
FUNC2(RDPCLIENT * This, const char *optarg)
{
	This->rdpclip = True;

	if (FUNC0(optarg, "PRIMARYCLIPBOARD"))
		This->xclip.auto_mode = True;
	else if (FUNC0(optarg, "CLIPBOARD"))
		This->xclip.auto_mode = False;
	else
	{
		FUNC1("Invalid clipboard mode '%s'.\n", optarg);
		This->rdpclip = False;
	}
}