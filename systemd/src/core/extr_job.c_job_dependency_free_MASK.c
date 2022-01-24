#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* object; TYPE_1__* subject; } ;
struct TYPE_9__ {int /*<<< orphan*/  object_list; } ;
struct TYPE_8__ {int /*<<< orphan*/  subject_list; } ;
typedef  TYPE_3__ JobDependency ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  object ; 
 int /*<<< orphan*/  subject ; 

void FUNC3(JobDependency *l) {
        FUNC1(l);

        if (l->subject)
                FUNC0(subject, l->subject->subject_list, l);

        FUNC0(object, l->object->object_list, l);

        FUNC2(l);
}