#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ pf_unlockAndPost; scalar_t__ pf_lock2; scalar_t__ pf_lock; } ;
typedef  TYPE_1__ NativeSurface ;
typedef  scalar_t__ AndroidSurface_unlockAndPost ;
typedef  scalar_t__ AndroidSurface_lock2 ;
typedef  scalar_t__ AndroidSurface_lock ;

/* Variables and functions */
 int /*<<< orphan*/  ANDROID_SYM_S_LOCK ; 
 int /*<<< orphan*/  ANDROID_SYM_S_LOCK2 ; 
 int /*<<< orphan*/  ANDROID_SYM_S_UNLOCK ; 
 int /*<<< orphan*/  RTLD_NOW ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *
FUNC3(const char *psz_lib, NativeSurface *p_ns)
{
    void *p_lib = FUNC1(psz_lib, RTLD_NOW);
    if (!p_lib)
        return NULL;

    p_ns->pf_lock = (AndroidSurface_lock)(FUNC2(p_lib, ANDROID_SYM_S_LOCK));
    p_ns->pf_lock2 = (AndroidSurface_lock2)(FUNC2(p_lib, ANDROID_SYM_S_LOCK2));
    p_ns->pf_unlockAndPost =
        (AndroidSurface_unlockAndPost)(FUNC2(p_lib, ANDROID_SYM_S_UNLOCK));

    if ((p_ns->pf_lock || p_ns->pf_lock2) && p_ns->pf_unlockAndPost)
        return p_lib;

    FUNC0(p_lib);
    return NULL;
}