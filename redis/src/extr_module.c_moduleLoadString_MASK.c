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
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int ver; int /*<<< orphan*/  rio; scalar_t__ error; } ;
typedef  TYPE_1__ RedisModuleIO ;

/* Variables and functions */
 int /*<<< orphan*/  RDB_LOAD_NONE ; 
 int /*<<< orphan*/  RDB_LOAD_PLAIN ; 
 scalar_t__ RDB_MODULE_OPCODE_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void *FUNC3(RedisModuleIO *io, int plain, size_t *lenptr) {
    if (io->error) return NULL;
    if (io->ver == 2) {
        uint64_t opcode = FUNC2(io->rio,NULL);
        if (opcode != RDB_MODULE_OPCODE_STRING) goto loaderr;
    }
    void *s = FUNC1(io->rio,
              plain ? RDB_LOAD_PLAIN : RDB_LOAD_NONE, lenptr);
    if (s == NULL) goto loaderr;
    return s;

loaderr:
    FUNC0(io);
    return NULL;
}