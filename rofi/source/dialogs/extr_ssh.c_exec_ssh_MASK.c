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
struct TYPE_4__ {char* hostname; scalar_t__ port; } ;
typedef  TYPE_1__ SshEntry ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_CACHE_FILE ; 
 int /*<<< orphan*/  cache_dir ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5 ( const SshEntry *entry )
{
    if ( !(entry->hostname )|| !(entry->hostname[0]) ) {
        return;
    }

    if ( !FUNC0 ( entry ) ) {
        return;
    }

    //  This happens in non-critical time (After launching app)
    //  It is allowed to be a bit slower.
    char *path = FUNC1 ( cache_dir, SSH_CACHE_FILE, NULL );
    // TODO update.
    if ( entry->port > 0 ) {
        char *store = FUNC3("%s\x1F%d", entry->hostname, entry->port );
        FUNC4 ( path, store );
        FUNC2 ( store );
    } else {
        FUNC4 ( path, entry->hostname );
    }
    FUNC2 ( path );
}