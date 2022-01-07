
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fifo_path; int state_file; int id; TYPE_1__* manager; int fifo_fd; int event_source; int why; int who; } ;
struct TYPE_7__ {int inhibitors; } ;
typedef TYPE_2__ Inhibitor ;


 int free (int ) ;
 int hashmap_remove (int ,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;

Inhibitor* inhibitor_free(Inhibitor *i) {

        if (!i)
                return ((void*)0);

        free(i->who);
        free(i->why);

        sd_event_source_unref(i->event_source);
        safe_close(i->fifo_fd);

        hashmap_remove(i->manager->inhibitors, i->id);



        free(i->state_file);
        free(i->fifo_path);

        return mfree(i);
}
