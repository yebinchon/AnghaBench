#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct channel_hook_entry {int /*<<< orphan*/  entry; int /*<<< orphan*/ * hook; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/ * REFGUID ;
typedef  int /*<<< orphan*/  IChannelHook ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct channel_hook_entry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  channel_hooks ; 
 int /*<<< orphan*/  csChannelHook ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC8(REFGUID rguid, IChannelHook *hook)
{
    struct channel_hook_entry *entry;

    FUNC5("(%s, %p)\n", FUNC6(rguid), hook);

    entry = FUNC2(FUNC1(), 0, sizeof(*entry));
    if (!entry)
        return E_OUTOFMEMORY;

    entry->id = *rguid;
    entry->hook = hook;
    FUNC3(hook);

    FUNC0(&csChannelHook);
    FUNC7(&channel_hooks, &entry->entry);
    FUNC4(&csChannelHook);

    return S_OK;
}