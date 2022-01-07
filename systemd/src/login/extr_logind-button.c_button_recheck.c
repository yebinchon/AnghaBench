
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_event_source ;
struct TYPE_3__ {int manager; struct TYPE_3__* lid_closed; } ;
typedef TYPE_1__ Button ;


 int assert (TYPE_1__*) ;
 int button_lid_switch_handle_action (int ,int) ;

__attribute__((used)) static int button_recheck(sd_event_source *e, void *userdata) {
        Button *b = userdata;

        assert(b);
        assert(b->lid_closed);

        button_lid_switch_handle_action(b->manager, 0);
        return 1;
}
