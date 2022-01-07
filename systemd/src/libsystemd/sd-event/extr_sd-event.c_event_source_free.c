
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; scalar_t__ dispatching; } ;
typedef TYPE_1__ sd_event_source ;


 scalar_t__ SOURCE_IO ;
 int source_disconnect (TYPE_1__*) ;
 int source_free (TYPE_1__*) ;
 int source_io_unregister (TYPE_1__*) ;

__attribute__((used)) static sd_event_source* event_source_free(sd_event_source *s) {
        if (!s)
                return ((void*)0);
        if (s->dispatching) {
                if (s->type == SOURCE_IO)
                        source_io_unregister(s);

                source_disconnect(s);
        } else
                source_free(s);

        return ((void*)0);
}
