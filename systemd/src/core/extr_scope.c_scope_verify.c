
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ load_state; int manager; int pids; } ;
typedef int Scope ;


 int ENOENT ;
 int MANAGER_IS_RELOADING (int ) ;
 int SPECIAL_INIT_SCOPE ;
 TYPE_1__* UNIT (int *) ;
 scalar_t__ UNIT_LOADED ;
 int assert (int) ;
 int log_unit_error (TYPE_1__*,char*) ;
 scalar_t__ set_isempty (int ) ;
 int unit_has_name (TYPE_1__*,int ) ;

__attribute__((used)) static int scope_verify(Scope *s) {
        assert(s);
        assert(UNIT(s)->load_state == UNIT_LOADED);

        if (set_isempty(UNIT(s)->pids) &&
            !MANAGER_IS_RELOADING(UNIT(s)->manager) &&
            !unit_has_name(UNIT(s), SPECIAL_INIT_SCOPE)) {
                log_unit_error(UNIT(s), "Scope has no PIDs. Refusing.");
                return -ENOENT;
        }

        return 0;
}
