
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int ver; int rio; scalar_t__ error; } ;
typedef TYPE_1__ RedisModuleIO ;


 int RDB_LOAD_NONE ;
 int RDB_LOAD_PLAIN ;
 scalar_t__ RDB_MODULE_OPCODE_STRING ;
 int moduleRDBLoadError (TYPE_1__*) ;
 void* rdbGenericLoadStringObject (int ,int ,size_t*) ;
 scalar_t__ rdbLoadLen (int ,int *) ;

void *moduleLoadString(RedisModuleIO *io, int plain, size_t *lenptr) {
    if (io->error) return ((void*)0);
    if (io->ver == 2) {
        uint64_t opcode = rdbLoadLen(io->rio,((void*)0));
        if (opcode != RDB_MODULE_OPCODE_STRING) goto loaderr;
    }
    void *s = rdbGenericLoadStringObject(io->rio,
              plain ? RDB_LOAD_PLAIN : RDB_LOAD_NONE, lenptr);
    if (s == ((void*)0)) goto loaderr;
    return s;

loaderr:
    moduleRDBLoadError(io);
    return ((void*)0);
}
