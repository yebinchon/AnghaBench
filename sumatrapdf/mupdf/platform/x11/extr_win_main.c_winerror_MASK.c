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
typedef  int /*<<< orphan*/  pdfapp_t ;

/* Variables and functions */
 int /*<<< orphan*/  MB_ICONERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  hwndframe ; 

void FUNC2(pdfapp_t *app, char *msg)
{
	FUNC0(hwndframe, msg, "MuPDF: Error", MB_ICONERROR);
	FUNC1(1);
}