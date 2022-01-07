
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ssize_t ;
typedef int rio ;
struct TYPE_7__ {int id; int (* aux_save ) (TYPE_2__*,int) ;} ;
typedef TYPE_1__ moduleType ;
struct TYPE_8__ {int bytes; int error; scalar_t__ ctx; } ;
typedef TYPE_2__ RedisModuleIO ;


 int RDB_MODULE_OPCODE_EOF ;
 int RDB_MODULE_OPCODE_UINT ;
 int RDB_OPCODE_MODULE_AUX ;
 int moduleFreeContext (scalar_t__) ;
 int moduleInitIOContext (TYPE_2__,TYPE_1__*,int *,int *) ;
 int rdbSaveLen (int *,int) ;
 int rdbSaveType (int *,int ) ;
 int stub1 (TYPE_2__*,int) ;
 int zfree (scalar_t__) ;

ssize_t rdbSaveSingleModuleAux(rio *rdb, int when, moduleType *mt) {

    RedisModuleIO io;
    int retval = rdbSaveType(rdb, RDB_OPCODE_MODULE_AUX);



    retval = rdbSaveLen(rdb,mt->id);
    if (retval == -1) return -1;
    io.bytes += retval;




    retval = rdbSaveLen(rdb,RDB_MODULE_OPCODE_UINT);
    if (retval == -1) return -1;
    io.bytes += retval;
    retval = rdbSaveLen(rdb,when);
    if (retval == -1) return -1;
    io.bytes += retval;


    moduleInitIOContext(io,mt,rdb,((void*)0));
    mt->aux_save(&io,when);
    retval = rdbSaveLen(rdb,RDB_MODULE_OPCODE_EOF);
    if (retval == -1)
        io.error = 1;
    else
        io.bytes += retval;

    if (io.ctx) {
        moduleFreeContext(io.ctx);
        zfree(io.ctx);
    }
    if (io.error)
        return -1;
    return io.bytes;
}
