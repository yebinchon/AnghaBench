#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vlc_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* entry ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* thread ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (TYPE_1__*),TYPE_1__*) ; 

__attribute__((used)) static void *FUNC4(void *data)
{
    vlc_thread_t th = data;

    thread = th;

    FUNC3(clean_detached_thread, th);
    th->entry(th->data);
    FUNC2();
    FUNC0(th);
    return NULL;
}