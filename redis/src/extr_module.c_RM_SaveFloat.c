
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int bytes; int rio; } ;
typedef TYPE_1__ RedisModuleIO ;


 int RDB_MODULE_OPCODE_FLOAT ;
 int rdbSaveBinaryFloatValue (int ,float) ;
 int rdbSaveLen (int ,int ) ;

void RM_SaveFloat(RedisModuleIO *io, float value) {
    if (io->error) return;

    int retval = rdbSaveLen(io->rio, RDB_MODULE_OPCODE_FLOAT);
    if (retval == -1) goto saveerr;
    io->bytes += retval;

    retval = rdbSaveBinaryFloatValue(io->rio, value);
    if (retval == -1) goto saveerr;
    io->bytes += retval;
    return;

saveerr:
    io->error = 1;
}
