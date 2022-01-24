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
typedef  int /*<<< orphan*/  RTF_Info ;

/* Variables and functions */
 int /*<<< orphan*/  ControlClass ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TextClass ; 
 int /*<<< orphan*/  rtfControl ; 
 int /*<<< orphan*/  rtfText ; 

int
FUNC1 (RTF_Info *info )
{
	/* install class callbacks */

	FUNC0 (info, rtfText, TextClass);
	FUNC0 (info, rtfControl, ControlClass);

	return (1);
}