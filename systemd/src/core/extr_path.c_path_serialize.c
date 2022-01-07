
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_3__ {int result; int state; } ;
typedef TYPE_1__ Path ;
typedef int FILE ;
typedef int FDSet ;


 TYPE_1__* PATH (int *) ;
 int assert (int *) ;
 int path_result_to_string (int ) ;
 int path_state_to_string (int ) ;
 int serialize_item (int *,char*,int ) ;

__attribute__((used)) static int path_serialize(Unit *u, FILE *f, FDSet *fds) {
        Path *p = PATH(u);

        assert(u);
        assert(f);
        assert(fds);

        (void) serialize_item(f, "state", path_state_to_string(p->state));
        (void) serialize_item(f, "result", path_result_to_string(p->result));

        return 0;
}
