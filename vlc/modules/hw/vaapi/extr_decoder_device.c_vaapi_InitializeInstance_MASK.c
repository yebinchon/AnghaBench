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
typedef  int /*<<< orphan*/  (* vaapi_native_destroy_cb ) (int /*<<< orphan*/ *) ;
struct vaapi_instance {int /*<<< orphan*/  (* native_destroy_cb ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * native; int /*<<< orphan*/  dpy; } ;
typedef  scalar_t__ VAStatus ;
typedef  int /*<<< orphan*/ * VANativeDisplay ;
typedef  int /*<<< orphan*/  VADisplay ;

/* Variables and functions */
 scalar_t__ VA_STATUS_SUCCESS ; 
 struct vaapi_instance* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vaapi_instance *
FUNC6(vlc_object_t *o, VADisplay dpy,
                             VANativeDisplay native,
                             vaapi_native_destroy_cb native_destroy_cb)
{
    int major = 0, minor = 0;
    VAStatus s = FUNC4(dpy, &major, &minor);
    if (s != VA_STATUS_SUCCESS)
    {
        FUNC1(o, "vaInitialize: %s", FUNC3(s));
        goto error;
    }
    struct vaapi_instance *inst = FUNC0(sizeof(*inst));

    if (FUNC2(inst == NULL))
        goto error;
    inst->dpy = dpy;
    inst->native = native;
    inst->native_destroy_cb = native_destroy_cb;

    return inst;
error:
    FUNC5(dpy);
    if (native != NULL && native_destroy_cb != NULL)
        native_destroy_cb(native);
    return NULL;
}