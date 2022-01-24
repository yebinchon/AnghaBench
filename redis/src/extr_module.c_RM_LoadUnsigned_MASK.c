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
 scalar_t__ RDB_MODULE_OPCODE_UINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 

uint64_t FUNC3(RedisModuleIO *io) {
    if (io->error) return 0;
    if (io->ver == 2) {
        uint64_t opcode = FUNC1(io->rio,NULL);
        if (opcode != RDB_MODULE_OPCODE_UINT) goto loaderr;
    }
    uint64_t value;
    int retval = FUNC2(io->rio, NULL, &value);
    if (retval == -1) goto loaderr;
    return value;

loaderr:
    FUNC0(io);
    return 0;
}