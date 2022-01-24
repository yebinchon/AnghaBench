#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int i_size; int /*<<< orphan*/ * p_elems; } ;
struct TYPE_14__ {TYPE_1__ extra; int /*<<< orphan*/  i_minor; int /*<<< orphan*/  i_major; } ;
struct TYPE_15__ {TYPE_2__ brands; } ;
typedef  TYPE_3__ mp4mux_handle_t ;
struct TYPE_16__ {int /*<<< orphan*/  b; } ;
typedef  TYPE_4__ bo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

bo_t *FUNC6(const mp4mux_handle_t *h)
{
    bo_t *box = FUNC4("ftyp");
    if(box)
    {
        FUNC1(box, &h->brands.i_major);
        FUNC0  (box, h->brands.i_minor);
        for(int i=0; i<h->brands.extra.i_size; i++)
            FUNC1(box, &h->brands.extra.p_elems[i]);
        if(!box->b)
        {
            FUNC5(box);
            return NULL;
        }
        FUNC3(box, FUNC2(box));
    }
    return box;
}