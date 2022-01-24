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

/* Variables and functions */
 int /*<<< orphan*/  jni_detach_thread ; 
 int /*<<< orphan*/  jni_env_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1()
{
    /* Create a TSD area and setup a destroy callback when a thread that
     * previously set the jni_env_key is canceled or exited */
    FUNC0(&jni_env_key, jni_detach_thread);
}