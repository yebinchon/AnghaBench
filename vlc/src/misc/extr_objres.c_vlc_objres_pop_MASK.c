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
struct vlc_res {void* payload; struct vlc_res* prev; } ;

/* Variables and functions */
 struct vlc_res** FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC1(vlc_object_t *obj)
{
    struct vlc_res **restrict pp = FUNC0(obj);
    struct vlc_res *res = *pp;

    if (res == NULL)
        return NULL;
    *pp = res->prev;
    return res->payload;
}