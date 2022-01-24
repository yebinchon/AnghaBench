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
struct TYPE_4__ {int /*<<< orphan*/  entry; struct TYPE_4__* path; int /*<<< orphan*/ * mutex; void* cache_prefix; int /*<<< orphan*/  default_entry_type; scalar_t__ file_size; int /*<<< orphan*/ * mapping; } ;
typedef  TYPE_1__ cache_container ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UrlContainers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,char const*,int) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static BOOL FUNC11(const char *cache_prefix, LPCWSTR path,
        DWORD default_entry_type, LPWSTR mutex_name)
{
    cache_container *pContainer = FUNC5(sizeof(cache_container));
    int cache_prefix_len = FUNC10(cache_prefix);

    if (!pContainer)
    {
        return FALSE;
    }

    pContainer->mapping = NULL;
    pContainer->file_size = 0;
    pContainer->default_entry_type = default_entry_type;

    pContainer->path = FUNC7(path);
    if (!pContainer->path)
    {
        FUNC6(pContainer);
        return FALSE;
    }

    pContainer->cache_prefix = FUNC5(cache_prefix_len+1);
    if (!pContainer->cache_prefix)
    {
        FUNC6(pContainer->path);
        FUNC6(pContainer);
        return FALSE;
    }

    FUNC9(pContainer->cache_prefix, cache_prefix, cache_prefix_len+1);

    FUNC0(mutex_name);
    FUNC4(mutex_name, '!');

    if ((pContainer->mutex = FUNC1(NULL, FALSE, mutex_name)) == NULL)
    {
        FUNC2("couldn't create mutex (error is %d)\n", FUNC3());
        FUNC6(pContainer->path);
        FUNC6(pContainer);
        return FALSE;
    }

    FUNC8(&UrlContainers, &pContainer->entry);

    return TRUE;
}