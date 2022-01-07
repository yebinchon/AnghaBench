
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int sd_event_source ;
struct TYPE_6__ {int event; int * timer; int ios; scalar_t__ curl; } ;
typedef TYPE_1__ CurlGlue ;


 int curl_multi_cleanup (scalar_t__) ;
 int hashmap_free (int ) ;
 int * hashmap_steal_first (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int sd_event_source_unref (int *) ;
 int sd_event_unref (int ) ;

CurlGlue *curl_glue_unref(CurlGlue *g) {
        sd_event_source *io;

        if (!g)
                return ((void*)0);

        if (g->curl)
                curl_multi_cleanup(g->curl);

        while ((io = hashmap_steal_first(g->ios))) {
                sd_event_source_unref(io);
        }

        hashmap_free(g->ios);

        sd_event_source_unref(g->timer);
        sd_event_unref(g->event);
        return mfree(g);
}
