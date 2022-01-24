#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  vlc_callback_t ;
struct TYPE_4__ {void* p_data; int /*<<< orphan*/  pf_value_callback; } ;
typedef  TYPE_1__ callback_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_value_callback ; 
 TYPE_1__* FUNC1 (int) ; 

void (FUNC2)(vlc_object_t *p_this, const char *psz_name,
                       vlc_callback_t pf_callback, void *p_data)
{
    callback_entry_t *entry = FUNC1(sizeof (*entry));

    entry->pf_value_callback = pf_callback;
    entry->p_data = p_data;
    FUNC0(p_this, psz_name, entry, vlc_value_callback);
}