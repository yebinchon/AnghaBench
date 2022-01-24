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
typedef  TYPE_1__* vlc_threadvar_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy ) (void*) ;struct TYPE_5__* prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  super_mutex ; 
 void* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* vlc_threadvar_last ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
    vlc_threadvar_t key;
retry:
    /* TODO: use RW lock or something similar */
    FUNC0(&super_mutex);
    for (key = vlc_threadvar_last; key != NULL; key = key->prev)
    {
        void *value = FUNC3(key);
        if (value != NULL && key->destroy != NULL)
        {
            FUNC1(&super_mutex);
            FUNC4(key, NULL);
            key->destroy(value);
            goto retry;
        }
    }
    FUNC1(&super_mutex);
}