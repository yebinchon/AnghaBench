
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; void* reply; void* current; void* output_buffer; void* input_buffer; int fd; } ;
typedef TYPE_1__ Varlink ;


 int assert (TYPE_1__*) ;
 void* json_variant_unref (void*) ;
 void* mfree (void*) ;
 int safe_close (int ) ;
 int sd_event_unref (int ) ;
 int varlink_detach_event_sources (TYPE_1__*) ;

__attribute__((used)) static void varlink_clear(Varlink *v) {
        assert(v);

        varlink_detach_event_sources(v);

        v->fd = safe_close(v->fd);

        v->input_buffer = mfree(v->input_buffer);
        v->output_buffer = mfree(v->output_buffer);

        v->current = json_variant_unref(v->current);
        v->reply = json_variant_unref(v->reply);

        v->event = sd_event_unref(v->event);
}
