#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ use_rdp5; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 int RDP_CAPLEN_GENERAL ; 
 int RDP_CAPSET_GENERAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(RDPCLIENT * This, STREAM s)
{
	FUNC1(s, RDP_CAPSET_GENERAL);
	FUNC1(s, RDP_CAPLEN_GENERAL);

	FUNC1(s, 1);	/* OS major type */
	FUNC1(s, 3);	/* OS minor type */
	FUNC1(s, 0x200);	/* Protocol version */
	FUNC0(s, 0);	/* Pad */
	FUNC0(s, 0);	/* Compression types */
	FUNC1(s, This->use_rdp5 ? 0x40d : 0);
	/* Pad, according to T.128. 0x40d seems to
	   trigger
	   the server to start sending RDP5 packets.
	   However, the value is 0x1d04 with W2KTSK and
	   NT4MS. Hmm.. Anyway, thankyou, Microsoft,
	   for sending such information in a padding
	   field.. */
	FUNC0(s, 0);	/* Update capability */
	FUNC0(s, 0);	/* Remote unshare capability */
	FUNC0(s, 0);	/* Compression level */
	FUNC0(s, 0);	/* Pad */
}