#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int last_cache_id; int /*<<< orphan*/  cache_list; } ;
struct TYPE_13__ {int /*<<< orphan*/  entry; } ;
struct TYPE_12__ {int /*<<< orphan*/  cfFormat; } ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ FORMATETC ;
typedef  TYPE_2__ DataCacheEntry ;
typedef  TYPE_3__ DataCache ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CACHE_S_FORMATETC_NOTSUPPORTED ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC9(DataCache *This, const FORMATETC *formatetc, DWORD advf,
                                     BOOL automatic, DataCacheEntry **cache_entry)
{
    HRESULT hr;
    DWORD id = automatic ? 1 : This->last_cache_id;
    DataCacheEntry *entry;

    hr = FUNC5( formatetc );
    if (FUNC0(hr))
        return hr;
    if (hr == CACHE_S_FORMATETC_NOTSUPPORTED)
        FUNC4("creating unsupported format %d\n", formatetc->cfFormat);

    entry = FUNC2(FUNC1(), 0, sizeof(*entry));
    if (!entry)
        return E_OUTOFMEMORY;

    if (!FUNC6(entry, formatetc, advf, id))
        goto fail;

    if (automatic)
        FUNC7(&This->cache_list, &entry->entry);
    else
    {
        FUNC8(&This->cache_list, &entry->entry);
        This->last_cache_id++;
    }

    if (cache_entry) *cache_entry = entry;
    return hr;

fail:
    FUNC3(FUNC1(), 0, entry);
    return E_OUTOFMEMORY;
}