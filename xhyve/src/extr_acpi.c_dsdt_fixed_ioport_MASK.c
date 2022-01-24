#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(uint16_t iobase, uint16_t length)
{

	FUNC0("IO (Decode16,");
	FUNC0("  0x%04X,             // Range Minimum", iobase);
	FUNC0("  0x%04X,             // Range Maximum", iobase);
	FUNC0("  0x01,               // Alignment");
	FUNC0("  0x%02X,               // Length", length);
	FUNC0("  )");
}