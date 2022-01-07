
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_4__ {int exec_context; } ;
typedef TYPE_1__ Socket ;
typedef int ExecCleanMask ;


 TYPE_1__* SOCKET (int *) ;
 int assert (TYPE_1__*) ;
 int exec_context_get_clean_mask (int *,int *) ;

__attribute__((used)) static int socket_can_clean(Unit *u, ExecCleanMask *ret) {
        Socket *s = SOCKET(u);

        assert(s);

        return exec_context_get_clean_mask(&s->exec_context, ret);
}
