
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* home; struct TYPE_12__* name; struct TYPE_12__* state_file; struct TYPE_12__* runtime_path; struct TYPE_12__* slice; struct TYPE_12__* runtime_dir_service; struct TYPE_12__* service; struct TYPE_12__* service_job; int timer_event_source; int uid; TYPE_1__* manager; scalar_t__ sessions; scalar_t__ in_gc_queue; } ;
typedef TYPE_2__ User ;
struct TYPE_11__ {int users; int user_units; int user_gc_queue; } ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 TYPE_2__* UID_TO_PTR (int ) ;
 int gc_queue ;
 int hashmap_remove_value (int ,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int sd_event_source_unref (int ) ;
 int session_free (scalar_t__) ;

User *user_free(User *u) {
        if (!u)
                return ((void*)0);

        if (u->in_gc_queue)
                LIST_REMOVE(gc_queue, u->manager->user_gc_queue, u);

        while (u->sessions)
                session_free(u->sessions);

        if (u->service)
                hashmap_remove_value(u->manager->user_units, u->service, u);

        if (u->runtime_dir_service)
                hashmap_remove_value(u->manager->user_units, u->runtime_dir_service, u);

        if (u->slice)
                hashmap_remove_value(u->manager->user_units, u->slice, u);

        hashmap_remove_value(u->manager->users, UID_TO_PTR(u->uid), u);

        (void) sd_event_source_unref(u->timer_event_source);

        u->service_job = mfree(u->service_job);

        u->service = mfree(u->service);
        u->runtime_dir_service = mfree(u->runtime_dir_service);
        u->slice = mfree(u->slice);
        u->runtime_path = mfree(u->runtime_path);
        u->state_file = mfree(u->state_file);
        u->name = mfree(u->name);
        u->home = mfree(u->home);

        return mfree(u);
}
