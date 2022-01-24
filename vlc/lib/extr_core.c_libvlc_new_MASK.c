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
typedef  int /*<<< orphan*/  libvlc_int_t ;
struct TYPE_5__ {int ref_count; int /*<<< orphan*/  instance_lock; int /*<<< orphan*/ * p_callback_list; int /*<<< orphan*/ * p_libvlc_int; } ;
typedef  TYPE_1__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

libvlc_instance_t * FUNC9( int argc, const char *const *argv )
{
    FUNC5 ();

    libvlc_instance_t *p_new = FUNC6 (sizeof (*p_new));
    if (FUNC7(p_new == NULL))
        return NULL;

    const char *my_argv[argc + 2];
    my_argv[0] = "libvlc"; /* dummy arg0, skipped by getopt() et al */
    for( int i = 0; i < argc; i++ )
         my_argv[i + 1] = argv[i];
    my_argv[argc + 1] = NULL; /* C calling conventions require a NULL */

    libvlc_int_t *p_libvlc_int = FUNC1();
    if (FUNC7 (p_libvlc_int == NULL))
        goto error;

    if (FUNC3( p_libvlc_int, argc + 1, my_argv ))
    {
        FUNC2( p_libvlc_int );
        goto error;
    }

    p_new->p_libvlc_int = p_libvlc_int;
    p_new->ref_count = 1;
    p_new->p_callback_list = NULL;
    FUNC8(&p_new->instance_lock);
    return p_new;

error:
    FUNC0 (p_new);
    FUNC4 ();
    return NULL;
}