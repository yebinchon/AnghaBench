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
typedef  scalar_t__ sds ;
typedef  int /*<<< orphan*/  rax ;

/* Variables and functions */
 int USER_COMMAND_BITS_COUNT ; 
 void* FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 void* raxNotFound ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

unsigned long FUNC8(const char *cmdname) {
    static rax *map = NULL;
    static unsigned long nextid = 0;

    sds lowername = FUNC5(cmdname);
    FUNC6(lowername);
    if (map == NULL) map = FUNC2();
    void *id = FUNC0(map,(unsigned char*)lowername,FUNC4(lowername));
    if (id != raxNotFound) {
        FUNC3(lowername);
        return (unsigned long)id;
    }
    FUNC1(map,(unsigned char*)lowername,FUNC7(lowername),
              (void*)nextid,NULL);
    FUNC3(lowername);
    unsigned long thisid = nextid;
    nextid++;

    /* We never assign the last bit in the user commands bitmap structure,
     * this way we can later check if this bit is set, understanding if the
     * current ACL for the user was created starting with a +@all to add all
     * the possible commands and just subtracting other single commands or
     * categories, or if, instead, the ACL was created just adding commands
     * and command categories from scratch, not allowing future commands by
     * default (loaded via modules). This is useful when rewriting the ACLs
     * with ACL SAVE. */
    if (nextid == USER_COMMAND_BITS_COUNT-1) nextid++;
    return thisid;
}