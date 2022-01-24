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
typedef  char uint8 ;
struct TYPE_6__ {int /*<<< orphan*/  channel; } ;
struct TYPE_7__ {TYPE_1__ rdpdr; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(RDPCLIENT * This)
{
	uint8 magic[4] = "rDCC";
	STREAM s;

	s = FUNC0(This, This->rdpdr.channel, 12);
	FUNC4(s, magic, 4);
	FUNC2(s, 1);	/* unknown */
	FUNC2(s, 5);
	FUNC3(s, 0x815ed39d);	/* IP address (use 127.0.0.1) 0x815ed39d */
	FUNC5(s);
	FUNC1(This, s, This->rdpdr.channel);
}