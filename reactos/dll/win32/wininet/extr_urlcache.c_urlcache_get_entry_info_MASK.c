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
typedef  int /*<<< orphan*/  urlcache_header ;
struct hash_entry {scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ signature; } ;
struct TYPE_5__ {char const* url_off; int header_info_off; int header_info_size; int cache_entry_type; char const* local_name_off; TYPE_1__ header; } ;
typedef  TYPE_2__ entry_url ;
typedef  int /*<<< orphan*/  cache_container ;
typedef  int LPCSTR ;
typedef  scalar_t__ LPBYTE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int GET_INSTALLED_ENTRY ; 
 int INSTALLED_CACHE_ENTRY ; 
 int /*<<< orphan*/  MIN_BLOCK_NO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ URL_SIGNATURE ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ **) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int*,TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,struct hash_entry**) ; 

__attribute__((used)) static BOOL FUNC12(const char *url, void *entry_info,
        DWORD *size, DWORD flags, BOOL unicode)
{
    urlcache_header *header;
    struct hash_entry *hash_entry;
    const entry_url *url_entry;
    cache_container *container;
    DWORD error;

    FUNC2("(%s, %p, %p, %x, %x)\n", FUNC8(url), entry_info, size, flags, unicode);

    if(flags & ~GET_INSTALLED_ENTRY)
        FUNC0("ignoring unsupported flags: %x\n", flags);

    error = FUNC7(url, &container);
    if(error != ERROR_SUCCESS) {
        FUNC1(error);
        return FALSE;
    }

    error = FUNC5(container, MIN_BLOCK_NO);
    if(error != ERROR_SUCCESS) {
        FUNC1(error);
        return FALSE;
    }

    if(!(header = FUNC4(container)))
        return FALSE;

    if(!FUNC11(header, url, &hash_entry)) {
        FUNC6(container, header);
        FUNC3("entry %s not found!\n", FUNC8(url));
        FUNC1(ERROR_FILE_NOT_FOUND);
        return FALSE;
    }

    url_entry = (const entry_url*)((LPBYTE)header + hash_entry->offset);
    if(url_entry->header.signature != URL_SIGNATURE) {
        FUNC6(container, header);
        FUNC0("Trying to retrieve entry of unknown format %s\n",
                FUNC9((LPCSTR)&url_entry->header.signature, sizeof(DWORD)));
        FUNC1(ERROR_FILE_NOT_FOUND);
        return FALSE;
    }

    FUNC2("Found URL: %s\n", FUNC8((LPCSTR)url_entry + url_entry->url_off));
    FUNC2("Header info: %s\n", FUNC9((LPCSTR)url_entry +
                url_entry->header_info_off, url_entry->header_info_size));

    if((flags & GET_INSTALLED_ENTRY) && !(url_entry->cache_entry_type & INSTALLED_CACHE_ENTRY)) {
        FUNC6(container, header);
        FUNC1(ERROR_FILE_NOT_FOUND);
        return FALSE;
    }

    if(size) {
        if(!entry_info)
            *size = 0;

        error = FUNC10(container, header, entry_info, size, url_entry, unicode);
        if(error != ERROR_SUCCESS) {
            FUNC6(container, header);
            FUNC1(error);
            return FALSE;
        }
        if(url_entry->local_name_off)
            FUNC2("Local File Name: %s\n", FUNC8((LPCSTR)url_entry + url_entry->local_name_off));
    }

    FUNC6(container, header);
    return TRUE;
}