#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  dialog_array; } ;
typedef  TYPE_1__ vlc_dialog_provider ;
struct TYPE_9__ {int i_type; int i_refcount; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ vlc_dialog_id ;
typedef  enum dialog_type { ____Placeholder_dialog_type } dialog_type ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vlc_dialog_id *
FUNC5(vlc_dialog_provider *p_provider, enum dialog_type i_type)
{
    vlc_dialog_id *p_id = FUNC0(1, sizeof(*p_id));

    if (p_id == NULL)
        return NULL;

    if(FUNC2(&p_provider->dialog_array, p_id))
    {
        FUNC1(p_id);
        return NULL;
    }

    FUNC4(&p_id->lock);
    FUNC3(&p_id->wait);

    p_id->i_type = i_type;
    p_id->i_refcount = 2; /* provider and callbacks */

    return p_id;
}