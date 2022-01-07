
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_3__ {int nice; } ;
typedef TYPE_1__ ExecContext ;


 TYPE_1__* unit_get_exec_context (int *) ;

__attribute__((used)) static int unit_get_nice(Unit *u) {
        ExecContext *ec;

        ec = unit_get_exec_context(u);
        return ec ? ec->nice : 0;
}
