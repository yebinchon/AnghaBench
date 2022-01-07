
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int ver; int rio; scalar_t__ error; } ;
typedef TYPE_1__ RedisModuleIO ;


 scalar_t__ RDB_MODULE_OPCODE_DOUBLE ;
 int moduleRDBLoadError (TYPE_1__*) ;
 int rdbLoadBinaryDoubleValue (int ,double*) ;
 scalar_t__ rdbLoadLen (int ,int *) ;

double RM_LoadDouble(RedisModuleIO *io) {
    if (io->error) return 0;
    if (io->ver == 2) {
        uint64_t opcode = rdbLoadLen(io->rio,((void*)0));
        if (opcode != RDB_MODULE_OPCODE_DOUBLE) goto loaderr;
    }
    double value;
    int retval = rdbLoadBinaryDoubleValue(io->rio, &value);
    if (retval == -1) goto loaderr;
    return value;

loaderr:
    moduleRDBLoadError(io);
    return 0;
}
