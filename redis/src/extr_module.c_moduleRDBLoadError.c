
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int error; scalar_t__ bytes; TYPE_2__* type; } ;
struct TYPE_6__ {int name; TYPE_1__* module; } ;
struct TYPE_5__ {int options; int name; } ;
typedef TYPE_3__ RedisModuleIO ;


 int LL_WARNING ;
 int REDISMODULE_OPTIONS_HANDLE_IO_ERRORS ;
 int exit (int) ;
 int serverLog (int ,char*,int ,int ,unsigned long long) ;

void moduleRDBLoadError(RedisModuleIO *io) {
    if (io->type->module->options & REDISMODULE_OPTIONS_HANDLE_IO_ERRORS) {
        io->error = 1;
        return;
    }
    serverLog(LL_WARNING,
        "Error loading data from RDB (short read or EOF). "
        "Read performed by module '%s' about type '%s' "
        "after reading '%llu' bytes of a value.",
        io->type->module->name,
        io->type->name,
        (unsigned long long)io->bytes);
    exit(1);
}
