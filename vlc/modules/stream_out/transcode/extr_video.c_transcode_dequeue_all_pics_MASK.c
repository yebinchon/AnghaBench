#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * first; int /*<<< orphan*/ ** last; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ pic; } ;
struct TYPE_7__ {TYPE_2__ fifo; } ;
typedef  TYPE_3__ sout_stream_id_sys_t ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC2( sout_stream_id_sys_t *id )
{
    FUNC0(&id->fifo.lock);
    picture_t *p_pics = id->fifo.pic.first;
    id->fifo.pic.first = NULL;
    id->fifo.pic.last = &id->fifo.pic.first;
    FUNC1(&id->fifo.lock);

    return p_pics;
}