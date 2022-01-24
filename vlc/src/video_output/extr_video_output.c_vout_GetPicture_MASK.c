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
struct TYPE_9__ {TYPE_1__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
struct TYPE_10__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_8__ {int /*<<< orphan*/  original; int /*<<< orphan*/  display_pool; int /*<<< orphan*/  dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

picture_t *FUNC5(vout_thread_t *vout)
{
    FUNC0(!vout->p->dummy);
    picture_t *picture = FUNC3(vout->p->display_pool);
    if (FUNC1(picture != NULL)) {
        FUNC2(picture);
        FUNC4(&picture->format, &vout->p->original);
    }
    return picture;
}