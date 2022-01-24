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
struct TYPE_5__ {void* setBuffersGeometry; void* unlockAndPost; void* winLock; } ;
struct TYPE_6__ {void* p_anw_dl; TYPE_1__ anw_api; void* pf_winRelease; void* pf_winFromSurface; } ;
typedef  TYPE_2__ AWindowHandler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  RTLD_NOW ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*,char*) ; 

__attribute__((used)) static void
FUNC4(AWindowHandler *p_awh)
{
    void *p_library = FUNC2("libandroid.so", RTLD_NOW);
    if (!p_library)
    {
        FUNC0(p_awh);
        return;
    }

    p_awh->pf_winFromSurface = FUNC3(p_library, "ANativeWindow_fromSurface");
    p_awh->pf_winRelease = FUNC3(p_library, "ANativeWindow_release");
    p_awh->anw_api.winLock = FUNC3(p_library, "ANativeWindow_lock");
    p_awh->anw_api.unlockAndPost = FUNC3(p_library, "ANativeWindow_unlockAndPost");
    p_awh->anw_api.setBuffersGeometry = FUNC3(p_library, "ANativeWindow_setBuffersGeometry");

    if (p_awh->pf_winFromSurface && p_awh->pf_winRelease
     && p_awh->anw_api.winLock && p_awh->anw_api.unlockAndPost
     && p_awh->anw_api.setBuffersGeometry)
    {
        p_awh->p_anw_dl = p_library;
    }
    else
    {
        FUNC1(p_library);
        FUNC0(p_awh);
    }
}