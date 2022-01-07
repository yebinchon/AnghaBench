
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event {TYPE_2__* manager; TYPE_1__* worker; int timeout_event; int timeout_warning_event; int dev_kernel; int dev; } ;
struct TYPE_4__ {scalar_t__ pid; int events; } ;
struct TYPE_3__ {int * event; } ;


 scalar_t__ LIST_IS_EMPTY (int ) ;
 int LIST_REMOVE (struct event*,int ,struct event*) ;
 int assert (TYPE_2__*) ;
 int errno ;
 int free (struct event*) ;
 scalar_t__ getpid_cached () ;
 int log_warning_errno (int ,char*) ;
 int sd_device_unref (int ) ;
 int sd_event_source_unref (int ) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void event_free(struct event *event) {
        if (!event)
                return;

        assert(event->manager);

        LIST_REMOVE(event, event->manager->events, event);
        sd_device_unref(event->dev);
        sd_device_unref(event->dev_kernel);

        sd_event_source_unref(event->timeout_warning_event);
        sd_event_source_unref(event->timeout_event);

        if (event->worker)
                event->worker->event = ((void*)0);


        if (LIST_IS_EMPTY(event->manager->events) &&
            event->manager->pid == getpid_cached())
                if (unlink("/run/udev/queue") < 0)
                        log_warning_errno(errno, "Failed to unlink /run/udev/queue: %m");

        free(event);
}
