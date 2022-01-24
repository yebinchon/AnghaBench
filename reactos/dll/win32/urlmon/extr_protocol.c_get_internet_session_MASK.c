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
typedef  int /*<<< orphan*/  IInternetBindInfo ;
typedef  int /*<<< orphan*/ * HINTERNET ;

/* Variables and functions */
 scalar_t__ FUNC0 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * internet_session ; 

HINTERNET FUNC3(IInternetBindInfo *bind_info)
{
    HINTERNET new_session;

    if(internet_session)
        return internet_session;

    if(!bind_info)
        return NULL;

    new_session = FUNC2(bind_info);
    if(new_session && FUNC0((void**)&internet_session, new_session, NULL))
        FUNC1(new_session);

    return internet_session;
}