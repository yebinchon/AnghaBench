#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct access_sys {int error_status; int /*<<< orphan*/  smb2; } ;
struct TYPE_4__ {struct access_sys* p_sys; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(stream_t *access, const char *psz_func, int err)
{
    struct access_sys *sys = access->p_sys;

    FUNC0(access, "%s failed: %d, %s", psz_func, err,
            FUNC1(sys->smb2));
    sys->error_status = err;
}