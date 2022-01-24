#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_8__ {int b_error; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static bool
FUNC4(stream_t *p_access, int i_status, const char *psz_error,
                 const char *psz_func)
{
    access_sys_t *sys = p_access->p_sys;

    if (i_status < 0)
    {
        if (i_status != -EINTR)
        {
            FUNC1(p_access, "%s failed: %d, '%s'", psz_func, i_status,
                    psz_error);
            if (!sys->b_error)
                FUNC3(p_access,
                                         FUNC0("NFS operation failed"), "%s",
                                         psz_error);
        }
        else
            FUNC2(p_access, "%s interrupted", psz_func);
        sys->b_error = true;
        return true;
    }
    else
        return false;
}