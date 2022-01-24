#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {char* cookie; void* data; scalar_t__ release; scalar_t__ get; } ;
struct TYPE_6__ {int /*<<< orphan*/  deadline; scalar_t__ dts; TYPE_1__ source; } ;
typedef  TYPE_2__ imem_sys_t ;
typedef  scalar_t__ imem_release_t ;
typedef  scalar_t__ imem_get_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,void*,void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC8(vlc_object_t *object, imem_sys_t **sys_ptr, const char *psz_path)
{
    char *tmp;

    /* */
    imem_sys_t *sys = FUNC7(object, 1, sizeof(*sys));
    if (!sys)
        return VLC_ENOMEM;

    /* Read the user functions */
    tmp = FUNC6(object, "imem-get");
    if (tmp)
        sys->source.get = (imem_get_t)(intptr_t)FUNC4(tmp, NULL, 0);
    FUNC1(tmp);

    tmp = FUNC6(object, "imem-release");
    if (tmp)
        sys->source.release = (imem_release_t)(intptr_t)FUNC4(tmp, NULL, 0);
    FUNC1(tmp);

    if (!sys->source.get || !sys->source.release) {
        FUNC3(object, "Invalid get/release function pointers");
        return VLC_EGENERIC;
    }

    tmp = FUNC6(object, "imem-data");
    if (tmp)
        sys->source.data = (void *)(uintptr_t)FUNC5(tmp, NULL, 0);
    FUNC1(tmp);

    /* Now we can parse the MRL (get/release must not be parsed to avoid
     * security risks) */
    if (*psz_path)
        FUNC0(object, psz_path);

    sys->source.cookie = FUNC6(object, "imem-cookie");

    FUNC2(object, "Using get(%p), release(%p), data(%p), cookie(%s)",
            (void *)sys->source.get, (void *)sys->source.release,
            sys->source.data,
            sys->source.cookie ? sys->source.cookie : "(null)");

    /* */
    sys->dts       = 0;
    sys->deadline  = VLC_TICK_INVALID;

    *sys_ptr = sys;
    return VLC_SUCCESS;
}