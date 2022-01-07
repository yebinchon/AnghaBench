
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_logger {int * ops; } ;
struct vlc_logger_switch {struct vlc_logger frontend; int lock; int * backend; } ;


 int discard_log ;
 struct vlc_logger_switch* malloc (int) ;
 int switch_ops ;
 scalar_t__ unlikely (int ) ;
 int vlc_rwlock_init (int *) ;

__attribute__((used)) static struct vlc_logger *vlc_LogSwitchCreate(void)
{
    struct vlc_logger_switch *logswitch = malloc(sizeof (*logswitch));
    if (unlikely(logswitch == ((void*)0)))
        return ((void*)0);

    logswitch->frontend.ops = &switch_ops;
    logswitch->backend = &discard_log;
    vlc_rwlock_init(&logswitch->lock);
    return &logswitch->frontend;
}
