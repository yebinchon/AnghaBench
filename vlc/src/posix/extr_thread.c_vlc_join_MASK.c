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
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ vlc_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void**) ; 

void FUNC2(vlc_thread_t th, void **result)
{
    int val = FUNC1(th.handle, result);
    FUNC0 ("joining thread");
}