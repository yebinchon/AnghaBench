#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {int /*<<< orphan*/ * p_nfs; } ;
typedef  TYPE_3__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int (*) (TYPE_1__*)) ; 

__attribute__((used)) static int
FUNC3(stream_t *p_access, bool (*pf_until_cb)(stream_t *))
{
    access_sys_t *p_sys = p_access->p_sys;
    FUNC0(p_sys->p_nfs != NULL);
    return FUNC2(p_access, FUNC1(p_sys->p_nfs),
                            pf_until_cb);
}