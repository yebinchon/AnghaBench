#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8 ;
typedef  int uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  channel; } ;
struct TYPE_8__ {TYPE_1__ rdpdr; int /*<<< orphan*/ * rdpdr_clientname; int /*<<< orphan*/ * hostname; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(RDPCLIENT * This)
{
	uint8 magic[4] = "rDNC";
	STREAM s;
	uint32 hostlen;

	if (NULL == This->rdpdr_clientname)
	{
		This->rdpdr_clientname = This->hostname;
	}
	hostlen = (FUNC8(This->rdpdr_clientname) + 1) * 2;

	s = FUNC0(This, This->rdpdr.channel, 16 + hostlen);
	FUNC5(s, magic, 4);
	FUNC2(s, 0x63);	/* unknown */
	FUNC2(s, 0x72);
	FUNC3(s, 0);
	FUNC4(s, hostlen);
	FUNC6(This, s, This->rdpdr_clientname, hostlen - 2);
	FUNC7(s);
	FUNC1(This, s, This->rdpdr.channel);
}