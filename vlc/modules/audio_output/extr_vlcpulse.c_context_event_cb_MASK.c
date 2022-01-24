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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  pa_proplist ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static void FUNC1(pa_context *c, const char *name, pa_proplist *pl,
                             void *userdata)
{
    vlc_object_t *obj = userdata;

    FUNC0 (obj, "unhandled context event \"%s\"", name);
    (void) c;
    (void) pl;
}