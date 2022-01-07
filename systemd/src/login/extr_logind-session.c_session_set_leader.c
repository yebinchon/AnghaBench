
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_8__ {scalar_t__ leader; int audit_id; TYPE_1__* manager; } ;
struct TYPE_7__ {int sessions_by_leader; } ;
typedef TYPE_2__ Session ;


 int EINVAL ;
 int PID_TO_PTR (scalar_t__) ;
 int assert (TYPE_2__*) ;
 int audit_session_from_pid (scalar_t__,int *) ;
 int hashmap_put (int ,int ,TYPE_2__*) ;
 int hashmap_remove_value (int ,int ,TYPE_2__*) ;
 scalar_t__ pid_is_valid (scalar_t__) ;

int session_set_leader(Session *s, pid_t pid) {
        int r;

        assert(s);

        if (!pid_is_valid(pid))
                return -EINVAL;

        if (s->leader == pid)
                return 0;

        r = hashmap_put(s->manager->sessions_by_leader, PID_TO_PTR(pid), s);
        if (r < 0)
                return r;

        if (pid_is_valid(s->leader))
                (void) hashmap_remove_value(s->manager->sessions_by_leader, PID_TO_PTR(s->leader), s);

        s->leader = pid;
        (void) audit_session_from_pid(pid, &s->audit_id);

        return 1;
}
