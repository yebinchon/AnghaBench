#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  allowed_commands; void* patterns; void* passwords; int /*<<< orphan*/ * allowed_subcommands; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/  ACLListDupSds ; 
 int /*<<< orphan*/  ACLListFreeSds ; 
 int /*<<< orphan*/  ACLListMatchSds ; 
 int /*<<< orphan*/  USER_FLAG_DISABLED ; 
 int /*<<< orphan*/  Users ; 
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ raxNotFound ; 
 int /*<<< orphan*/  FUNC7 (char const*,size_t) ; 
 TYPE_1__* FUNC8 (int) ; 

user *FUNC9(const char *name, size_t namelen) {
    if (FUNC5(Users,(unsigned char*)name,namelen) != raxNotFound) return NULL;
    user *u = FUNC8(sizeof(*u));
    u->name = FUNC7(name,namelen);
    u->flags = USER_FLAG_DISABLED;
    u->allowed_subcommands = NULL;
    u->passwords = FUNC0();
    u->patterns = FUNC0();
    FUNC3(u->passwords,ACLListMatchSds);
    FUNC2(u->passwords,ACLListFreeSds);
    FUNC1(u->passwords,ACLListDupSds);
    FUNC3(u->patterns,ACLListMatchSds);
    FUNC2(u->patterns,ACLListFreeSds);
    FUNC1(u->patterns,ACLListDupSds);
    FUNC4(u->allowed_commands,0,sizeof(u->allowed_commands));
    FUNC6(Users,(unsigned char*)name,namelen,u,NULL);
    return u;
}