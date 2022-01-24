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

/* Variables and functions */
 int /*<<< orphan*/  SSH_CACHE_FILE ; 
 int /*<<< orphan*/  cache_dir ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3 ( const char *host )
{
    if ( !host || !host[0] ) {
        return;
    }
    char *path = FUNC0 ( cache_dir, SSH_CACHE_FILE, NULL );
    FUNC2 ( path, host );
    FUNC1 ( path );
}