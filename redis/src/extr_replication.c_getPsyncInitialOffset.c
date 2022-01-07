
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long master_repl_offset; } ;


 TYPE_1__ server ;

long long getPsyncInitialOffset(void) {
    return server.master_repl_offset;
}
