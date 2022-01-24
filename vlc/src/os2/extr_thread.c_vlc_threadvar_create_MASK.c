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
struct vlc_threadvar {void (* destroy ) (void*) ;struct vlc_threadvar* next; struct vlc_threadvar* prev; int /*<<< orphan*/  id; } ;
typedef  scalar_t__ ULONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int EAGAIN ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_threadvar*) ; 
 struct vlc_threadvar* FUNC2 (int) ; 
 int /*<<< orphan*/  super_mutex ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vlc_threadvar* vlc_threadvar_last ; 

int FUNC6 (vlc_threadvar_t *p_tls, void (*destr) (void *))
{
    ULONG rc;

    struct vlc_threadvar *var = FUNC2 (sizeof (*var));
    if (FUNC3(var == NULL))
        return errno;

    rc = FUNC0( 1, &var->id );
    if( rc )
    {
        FUNC1 (var);
        return EAGAIN;
    }

    var->destroy = destr;
    var->next = NULL;
    *p_tls = var;

    FUNC4 (&super_mutex);
    var->prev = vlc_threadvar_last;
    if (var->prev)
        var->prev->next = var;

    vlc_threadvar_last = var;
    FUNC5 (&super_mutex);
    return 0;
}