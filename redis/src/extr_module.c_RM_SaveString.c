
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int error; int bytes; int rio; } ;
typedef int RedisModuleString ;
typedef TYPE_1__ RedisModuleIO ;


 int RDB_MODULE_OPCODE_STRING ;
 int rdbSaveLen (int ,int ) ;
 int rdbSaveStringObject (int ,int *) ;

void RM_SaveString(RedisModuleIO *io, RedisModuleString *s) {
    if (io->error) return;

    ssize_t retval = rdbSaveLen(io->rio, RDB_MODULE_OPCODE_STRING);
    if (retval == -1) goto saveerr;
    io->bytes += retval;

    retval = rdbSaveStringObject(io->rio, s);
    if (retval == -1) goto saveerr;
    io->bytes += retval;
    return;

saveerr:
    io->error = 1;
}
