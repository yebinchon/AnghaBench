#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  rio ;
struct TYPE_7__ {int id; int /*<<< orphan*/  (* aux_save ) (TYPE_2__*,int) ;} ;
typedef  TYPE_1__ moduleType ;
struct TYPE_8__ {int bytes; int error; scalar_t__ ctx; } ;
typedef  TYPE_2__ RedisModuleIO ;

/* Variables and functions */
 int RDB_MODULE_OPCODE_EOF ; 
 int RDB_MODULE_OPCODE_UINT ; 
 int /*<<< orphan*/  RDB_OPCODE_MODULE_AUX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

ssize_t FUNC6(rio *rdb, int when, moduleType *mt) {
    /* Save a module-specific aux value. */
    RedisModuleIO io;
    int retval = FUNC3(rdb, RDB_OPCODE_MODULE_AUX);

    /* Write the "module" identifier as prefix, so that we'll be able
     * to call the right module during loading. */
    retval = FUNC2(rdb,mt->id);
    if (retval == -1) return -1;
    io.bytes += retval;

    /* write the 'when' so that we can provide it on loading. add a UINT opcode
     * for backwards compatibility, everything after the MT needs to be prefixed
     * by an opcode. */
    retval = FUNC2(rdb,RDB_MODULE_OPCODE_UINT);
    if (retval == -1) return -1;
    io.bytes += retval;
    retval = FUNC2(rdb,when);
    if (retval == -1) return -1;
    io.bytes += retval;

    /* Then write the module-specific representation + EOF marker. */
    FUNC1(io,mt,rdb,NULL);
    mt->aux_save(&io,when);
    retval = FUNC2(rdb,RDB_MODULE_OPCODE_EOF);
    if (retval == -1)
        io.error = 1;
    else
        io.bytes += retval;

    if (io.ctx) {
        FUNC0(io.ctx);
        FUNC5(io.ctx);
    }
    if (io.error)
        return -1;
    return io.bytes;
}