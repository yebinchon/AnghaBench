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
typedef  int /*<<< orphan*/  EGLDisplay ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_CLIENT_APIS ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC2 (EGLDisplay dpy, const char *api)
{
    const char *apis = FUNC0 (dpy, EGL_CLIENT_APIS);
    return FUNC1(apis, api);
}