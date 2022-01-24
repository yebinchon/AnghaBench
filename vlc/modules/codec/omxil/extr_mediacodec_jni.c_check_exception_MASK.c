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
struct TYPE_5__ {int /*<<< orphan*/  (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 

__attribute__((used)) static inline bool FUNC2(JNIEnv *env)
{
    if ((*env)->ExceptionCheck(env))
    {
        (*env)->ExceptionClear(env);
        return true;
    }
    else
        return false;
}