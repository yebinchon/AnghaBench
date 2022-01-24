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
 int /*<<< orphan*/  NET_WM_NAME ; 
 int /*<<< orphan*/  PropModeReplace ; 
 int /*<<< orphan*/  XA_UTF8_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  xdpy ; 
 int /*<<< orphan*/  xwin ; 

void FUNC5(pdfapp_t *app, char *s)
{
	FUNC1(xdpy, xwin, s);
#ifdef X_HAVE_UTF8_STRING
	Xutf8SetWMProperties(xdpy, xwin, s, s, NULL, 0, NULL, NULL, NULL);
#else
	FUNC2(xdpy, xwin, s, s, NULL, 0, NULL, NULL, NULL);
#endif
	FUNC0(xdpy, xwin, NET_WM_NAME, XA_UTF8_STRING, 8,
			PropModeReplace, (unsigned char *)s, FUNC4(s));
}