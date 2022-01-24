#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* p; } ;
typedef  TYPE_4__ vout_thread_t ;
struct TYPE_15__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_5__ picture_t ;
struct TYPE_13__ {int /*<<< orphan*/  video; } ;
struct TYPE_11__ {TYPE_4__* sys; } ;
struct TYPE_16__ {TYPE_3__ fmt_out; TYPE_1__ owner; } ;
typedef  TYPE_6__ filter_t ;
struct TYPE_12__ {int /*<<< orphan*/  private_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC3(filter_t *filter)
{
    vout_thread_t *vout = filter->owner.sys;

    picture_t *picture = FUNC1(vout->p->private_pool);
    if (picture) {
        FUNC0(picture);
        FUNC2(&picture->format, &filter->fmt_out.video);
    }
    return picture;
}