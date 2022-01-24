#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  image; struct TYPE_9__* next; struct TYPE_9__* images; struct TYPE_9__* partstate; struct TYPE_9__* properties; struct TYPE_9__* classes; scalar_t__ hTheme; int /*<<< orphan*/  dwRefCount; } ;
typedef  TYPE_1__* PTHEME_PROPERTY ;
typedef  TYPE_1__* PTHEME_PARTSTATE ;
typedef  TYPE_1__* PTHEME_IMAGE ;
typedef  TYPE_1__* PTHEME_FILE ;
typedef  TYPE_1__* PTHEME_CLASS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC5(PTHEME_FILE tf)
{
    if(tf) {

        tf->dwRefCount--;
        FUNC4("Theme %p refcount: %d\n", tf, tf->dwRefCount);

        if(!tf->dwRefCount) {
            if(tf->hTheme) FUNC1(tf->hTheme);
            if(tf->classes) {
                while(tf->classes) {
                    PTHEME_CLASS pcls = tf->classes;
                    tf->classes = pcls->next;
                    while(pcls->partstate) {
                        PTHEME_PARTSTATE ps = pcls->partstate;

                        while(ps->properties) {
                            PTHEME_PROPERTY prop = ps->properties;
                            ps->properties = prop->next;
                            FUNC3(FUNC2(), 0, prop);
                        }

                        pcls->partstate = ps->next;
                        FUNC3(FUNC2(), 0, ps);
                    }
                    FUNC3(FUNC2(), 0, pcls);
                }
            }
            while (tf->images)
            {
                PTHEME_IMAGE img = tf->images;
                tf->images = img->next;
                FUNC0 (img->image);
                FUNC3 (FUNC2(), 0, img);
            }
            FUNC3(FUNC2(), 0, tf);
        }
    }
}