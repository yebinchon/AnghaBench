#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libs ;
typedef  int /*<<< orphan*/  jobject ;
struct TYPE_5__ {void* p_dl_handle; void* p_surface_handle; } ;
typedef  TYPE_1__ NativeSurface ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  int /*<<< orphan*/  ANativeWindow ;

/* Variables and functions */
 void* FUNC0 (char const*,TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static ANativeWindow*
FUNC4(JNIEnv *p_env, jobject jsurf)
{
    void *p_surface_handle;
    NativeSurface *p_ns;

    static const char *libs[] = {
        "libsurfaceflinger_client.so",
        "libgui.so",
        "libui.so"
    };
    p_surface_handle = FUNC1(p_env, jsurf);
    if (!p_surface_handle)
        return NULL;
    p_ns = FUNC3(sizeof(NativeSurface));
    if (!p_ns)
        return NULL;
    p_ns->p_surface_handle = p_surface_handle;

    for (size_t i = 0; i < sizeof(libs) / sizeof(*libs); i++)
    {
        void *p_dl_handle = FUNC0(libs[i], p_ns);
        if (p_dl_handle)
        {
            p_ns->p_dl_handle = p_dl_handle;
            return (ANativeWindow*)p_ns;
        }
    }
    FUNC2(p_ns);
    return NULL;
}