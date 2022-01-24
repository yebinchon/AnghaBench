#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stgmed_obj_t ;
struct TYPE_5__ {TYPE_1__* buf; } ;
typedef  TYPE_2__ stgmed_file_obj_t ;
struct TYPE_4__ {int /*<<< orphan*/  IUnknown_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(stgmed_obj_t *obj)
{
    stgmed_file_obj_t *file_obj = (stgmed_file_obj_t*)obj;

    FUNC0(&file_obj->buf->IUnknown_iface);
    FUNC1(file_obj);
}