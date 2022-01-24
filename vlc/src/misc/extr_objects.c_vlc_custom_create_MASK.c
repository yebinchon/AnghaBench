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
typedef  void vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (void*,void*,char const*) ; 

void *(FUNC5)(vlc_object_t *parent, size_t length,
                          const char *typename)
{
    FUNC0(length >= sizeof (vlc_object_t));

    vlc_object_t *obj = FUNC1(length, 1);
    if (FUNC3(obj == NULL || FUNC4(obj, parent, typename))) {
        FUNC2(obj);
        obj = NULL;
    }
    return obj;
}