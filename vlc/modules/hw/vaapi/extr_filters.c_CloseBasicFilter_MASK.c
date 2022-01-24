#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  psz_name; } ;
struct basic_filter_data {TYPE_1__ sigma; } ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_8__ {struct basic_filter_data* p_data; } ;
typedef  TYPE_3__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const,TYPE_3__* const) ; 
 int /*<<< orphan*/  FilterCallback ; 
 int /*<<< orphan*/  FUNC1 (struct basic_filter_data* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct basic_filter_data* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(vlc_object_t * obj)
{
    filter_t *const                     filter = (filter_t *)obj;
    filter_sys_t *const                 filter_sys = filter->p_sys;
    struct basic_filter_data *const     p_data = filter_sys->p_data;

    FUNC2(obj, p_data->sigma.psz_name, FilterCallback, p_data);
    FUNC3(obj, p_data->sigma.psz_name);
    FUNC1(p_data);
    FUNC0(filter, filter_sys);
}