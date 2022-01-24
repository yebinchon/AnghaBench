#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_12__ {int argc; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_13__ {int /*<<< orphan*/  ok; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
#define  EAGAIN 131 
#define  EBUSY 130 
#define  ENOENT 129 
#define  EPERM 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int errno ; 
 scalar_t__ FUNC6 (char*,void**,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

void FUNC9(client *c) {
    char *subcmd = c->argv[1]->ptr;
    if (c->argc == 2 && !FUNC8(subcmd,"help")) {
        const char *help[] = {
"LIST -- Return a list of loaded modules.",
"LOAD <path> [arg ...] -- Load a module library from <path>.",
"UNLOAD <name> -- Unload a module.",
NULL
        };
        FUNC3(c, help);
    } else
    if (!FUNC8(subcmd,"load") && c->argc >= 3) {
        robj **argv = NULL;
        int argc = 0;

        if (c->argc > 3) {
            argc = c->argc - 3;
            argv = &c->argv[3];
        }

        if (FUNC6(c->argv[2]->ptr,(void **)argv,argc) == C_OK)
            FUNC0(c,shared.ok);
        else
            FUNC1(c,
                "Error loading the extension. Please check the server logs.");
    } else if (!FUNC8(subcmd,"unload") && c->argc == 3) {
        if (FUNC7(c->argv[2]->ptr) == C_OK)
            FUNC0(c,shared.ok);
        else {
            char *errmsg;
            switch(errno) {
            case ENOENT:
                errmsg = "no such module with that name";
                break;
            case EBUSY:
                errmsg = "the module exports one or more module-side data "
                         "types, can't unload";
                break;
            case EPERM:
                errmsg = "the module exports APIs used by other modules. "
                         "Please unload them first and try again";
                break;
            case EAGAIN:
                errmsg = "the module has blocked clients. "
                         "Please wait them unblocked and try again";
                break;
            default:
                errmsg = "operation not possible.";
                break;
            }
            FUNC2(c,"Error unloading module: %s",errmsg);
        }
    } else if (!FUNC8(subcmd,"list") && c->argc == 2) {
        FUNC4(c);
    } else {
        FUNC5(c);
        return;
    }
}