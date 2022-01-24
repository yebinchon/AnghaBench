#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum AWindow_ID { ____Placeholder_AWindow_ID } AWindow_ID ;
struct TYPE_7__ {TYPE_1__* views; int /*<<< orphan*/ * (* pf_winFromSurface ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * p_anw; int /*<<< orphan*/ * jsurface; } ;
typedef  int /*<<< orphan*/  JNIEnv ;
typedef  TYPE_2__ AWindowHandler ;
typedef  int /*<<< orphan*/  ANativeWindow ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int AWindow_Max ; 
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ANativeWindow *
FUNC4(AWindowHandler *p_awh, enum AWindow_ID id)
{
    FUNC2(id < AWindow_Max);

    JNIEnv *p_env;

    if (p_awh->views[id].p_anw)
        return p_awh->views[id].p_anw;

    p_env = FUNC0(p_awh);
    if (!p_env)
        return NULL;

    if (FUNC1(p_awh, p_env, id) != VLC_SUCCESS)
        return NULL;
    FUNC2(p_awh->views[id].jsurface != NULL);

    p_awh->views[id].p_anw = p_awh->pf_winFromSurface(p_env,
                                                      p_awh->views[id].jsurface);
    return p_awh->views[id].p_anw;
}