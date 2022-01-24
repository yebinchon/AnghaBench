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
struct TYPE_3__ {int server_depth; scalar_t__ bitmap_compression; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ RDPCLIENT ;

/* Variables and functions */
 int RDP_CAPLEN_BITMAP ; 
 int RDP_CAPSET_BITMAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(RDPCLIENT * This, STREAM s)
{
	FUNC1(s, RDP_CAPSET_BITMAP);
	FUNC1(s, RDP_CAPLEN_BITMAP);

	FUNC1(s, This->server_depth);	/* Preferred colour depth */
	FUNC1(s, 1);	/* Receive 1 BPP */
	FUNC1(s, 1);	/* Receive 4 BPP */
	FUNC1(s, 1);	/* Receive 8 BPP */
	FUNC1(s, 800);	/* Desktop width */
	FUNC1(s, 600);	/* Desktop height */
	FUNC0(s, 0);	/* Pad */
	FUNC0(s, 1);	/* Allow resize */
	FUNC1(s, This->bitmap_compression ? 1 : 0);	/* Support compression */
	FUNC0(s, 0);	/* Unknown */
	FUNC1(s, 1);	/* Unknown */
	FUNC0(s, 0);	/* Pad */
}