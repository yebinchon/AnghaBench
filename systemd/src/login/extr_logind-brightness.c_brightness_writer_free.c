
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int child_event_source; int pending_messages; int current_messages; struct TYPE_8__* path; int device; TYPE_1__* manager; } ;
struct TYPE_7__ {int brightness_writers; } ;
typedef TYPE_2__ BrightnessWriter ;


 int free (TYPE_2__*) ;
 int hashmap_remove_value (int ,TYPE_2__*,TYPE_2__*) ;
 int sd_device_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int set_free (int ) ;

__attribute__((used)) static void brightness_writer_free(BrightnessWriter *w) {
        if (!w)
                return;

        if (w->manager && w->path)
                (void) hashmap_remove_value(w->manager->brightness_writers, w->path, w);

        sd_device_unref(w->device);
        free(w->path);

        set_free(w->current_messages);
        set_free(w->pending_messages);

        w->child_event_source = sd_event_source_unref(w->child_event_source);

        free(w);
}
