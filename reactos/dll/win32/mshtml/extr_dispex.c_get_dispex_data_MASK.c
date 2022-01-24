#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dispex_data_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ DispatchEx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cs_dispex_static_data ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static dispex_data_t *FUNC3(DispatchEx *This)
{
    if(This->data->data)
        return This->data->data;

    FUNC0(&cs_dispex_static_data);

    if(!This->data->data)
        This->data->data = FUNC2(This);

    FUNC1(&cs_dispex_static_data);

    return This->data->data;
}