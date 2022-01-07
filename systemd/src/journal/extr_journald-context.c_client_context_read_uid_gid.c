
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ucred {int gid; int uid; } ;
struct TYPE_5__ {int gid; int pid; int uid; } ;
typedef TYPE_1__ ClientContext ;


 int assert (TYPE_1__*) ;
 int get_process_gid (int ,int *) ;
 int get_process_uid (int ,int *) ;
 scalar_t__ gid_is_valid (int ) ;
 TYPE_1__* pid_is_valid (int ) ;
 scalar_t__ uid_is_valid (int ) ;

__attribute__((used)) static void client_context_read_uid_gid(ClientContext *c, const struct ucred *ucred) {
        assert(c);
        assert(pid_is_valid(c->pid));


        if (ucred && uid_is_valid(ucred->uid))
                c->uid = ucred->uid;
        else
                (void) get_process_uid(c->pid, &c->uid);

        if (ucred && gid_is_valid(ucred->gid))
                c->gid = ucred->gid;
        else
                (void) get_process_gid(c->pid, &c->gid);
}
