
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inotify_event {int mask; } ;
typedef int gboolean ;
struct TYPE_3__ {int mask; } ;
typedef TYPE_1__ EventInfo ;


 int IN_CLOSE_WRITE ;
 int IN_MODIFY ;

__attribute__((used)) inline static gboolean
is_modify_close_write (EventInfo *e1, struct inotify_event *e2)
{
    return ((e1->mask & IN_MODIFY) && (e2->mask & IN_CLOSE_WRITE));
}
