
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ notify_access; } ;
typedef TYPE_1__ Service ;
typedef int ExecFlags ;


 int EXEC_IS_CONTROL ;
 int IN_SET (scalar_t__,int ,int ) ;
 int NOTIFY_ALL ;
 int NOTIFY_EXEC ;
 scalar_t__ NOTIFY_NONE ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static bool service_exec_needs_notify_socket(Service *s, ExecFlags flags) {
        assert(s);
        if (flags & EXEC_IS_CONTROL)

                return IN_SET(s->notify_access, NOTIFY_EXEC, NOTIFY_ALL);



        return s->notify_access != NOTIFY_NONE;
}
