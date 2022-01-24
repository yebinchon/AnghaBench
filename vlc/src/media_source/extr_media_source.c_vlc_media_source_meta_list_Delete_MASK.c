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
struct TYPE_8__ {size_t size; TYPE_1__* data; } ;
struct TYPE_7__ {TYPE_3__ vec; } ;
typedef  TYPE_2__ vlc_media_source_meta_list_t ;
struct TYPE_6__ {TYPE_2__* longname; TYPE_2__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

void
FUNC2(vlc_media_source_meta_list_t *list) {
    for (size_t i = 0; i < list->vec.size; ++i)
    {
        FUNC0(list->vec.data[i].name);
        FUNC0(list->vec.data[i].longname);
    }
    FUNC1(&list->vec);
    FUNC0(list);
}