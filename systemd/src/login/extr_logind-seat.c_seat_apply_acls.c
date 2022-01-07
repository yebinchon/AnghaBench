
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* active; int id; } ;
struct TYPE_12__ {TYPE_1__* user; } ;
struct TYPE_11__ {int uid; } ;
struct TYPE_10__ {TYPE_3__* user; } ;
struct TYPE_9__ {int uid; } ;
typedef TYPE_4__ Session ;
typedef TYPE_5__ Seat ;


 int assert (TYPE_5__*) ;
 int devnode_acl_all (int ,int,int,int ,int,int ) ;
 int log_error_errno (int,char*) ;

int seat_apply_acls(Seat *s, Session *old_active) {
        int r;

        assert(s);

        r = devnode_acl_all(s->id,
                            0,
                            !!old_active, old_active ? old_active->user->uid : 0,
                            !!s->active, s->active ? s->active->user->uid : 0);

        if (r < 0)
                return log_error_errno(r, "Failed to apply ACLs: %m");

        return 0;
}
