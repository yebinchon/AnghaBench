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
typedef  struct vlc_threadvar* vlc_threadvar_t ;
struct vlc_threadvar {scalar_t__ id; void (* destroy ) (void*) ;struct vlc_threadvar* next; struct vlc_threadvar* prev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ TLS_OUT_OF_INDEXES ; 
 scalar_t__ FUNC2 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_threadvar*) ; 
 struct vlc_threadvar* FUNC4 (int) ; 
 int /*<<< orphan*/  super_mutex ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct vlc_threadvar* vlc_threadvar_last ; 

int FUNC6 (vlc_threadvar_t *p_tls, void (*destr) (void *))
{
    struct vlc_threadvar *var = FUNC4 (sizeof (*var));
    if (FUNC5(var == NULL))
        return errno;

    var->id = FUNC2();
    if (var->id == TLS_OUT_OF_INDEXES)
    {
        FUNC3 (var);
        return EAGAIN;
    }
    var->destroy = destr;
    var->next = NULL;
    *p_tls = var;

    FUNC0(&super_mutex);
    var->prev = vlc_threadvar_last;
    if (var->prev)
        var->prev->next = var;

    vlc_threadvar_last = var;
    FUNC1(&super_mutex);
    return 0;
}