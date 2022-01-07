
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * mount_monitor; int mount_event_source; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int mnt_unref_monitor (int *) ;
 int sd_event_source_unref (int ) ;

__attribute__((used)) static void mount_shutdown(Manager *m) {
        assert(m);

        m->mount_event_source = sd_event_source_unref(m->mount_event_source);

        mnt_unref_monitor(m->mount_monitor);
        m->mount_monitor = ((void*)0);
}
