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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(char *progName)
{
	FUNC1("\nUSAGE: %s [options]\n", progName);
	FUNC1("Options:\n");
	FUNC1("-yuv = test YUV encoding/decoding support\n");
	FUNC1("-alloc = test automatic buffer allocation\n");
	FUNC0(1);
}