#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_2__ {int /*<<< orphan*/  prompt; int /*<<< orphan*/ * dbnum; int /*<<< orphan*/  hostport; int /*<<< orphan*/  hostip; int /*<<< orphan*/ * hostsocket; scalar_t__ eval_ldb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ config ; 
 char* FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char*,int) ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void) {
    if (config.eval_ldb) return;

    sds prompt = FUNC3();
    if (config.hostsocket != NULL) {
        prompt = FUNC1(prompt,"redis %s",config.hostsocket);
    } else {
        char addr[256];
        FUNC0(addr, sizeof(addr), config.hostip, config.hostport);
        prompt = FUNC2(prompt,addr,FUNC6(addr));
    }

    /* Add [dbnum] if needed */
    if (config.dbnum != 0)
        prompt = FUNC1(prompt,"[%i]",config.dbnum);

    /* Copy the prompt in the static buffer. */
    prompt = FUNC2(prompt,"> ",2);
    FUNC5(config.prompt,sizeof(config.prompt),"%s",prompt);
    FUNC4(prompt);
}