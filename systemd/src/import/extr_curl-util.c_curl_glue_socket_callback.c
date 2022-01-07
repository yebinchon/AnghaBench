
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
typedef int curl_socket_t ;
struct TYPE_6__ {int ios; int curl; int event; } ;
typedef TYPE_1__ CurlGlue ;
typedef TYPE_1__ CURLM ;


 scalar_t__ CURLM_OK ;
 int CURL_POLL_IN ;
 int CURL_POLL_INOUT ;
 int CURL_POLL_OUT ;
 int CURL_POLL_REMOVE ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int FD_TO_PTR (int ) ;
 int SD_EVENT_ON ;
 int assert (TYPE_1__*) ;
 int curl_glue_on_io ;
 scalar_t__ curl_multi_assign (int ,int ,int *) ;
 int hashmap_ensure_allocated (int *,int *) ;
 int hashmap_put (int ,int ,int *) ;
 int hashmap_remove (int ,int ) ;
 int log_oom () ;
 scalar_t__ sd_event_add_io (int ,int **,int ,int,int ,TYPE_1__*) ;
 int sd_event_source_disable_unref (int *) ;
 int sd_event_source_set_description (int *,char*) ;
 scalar_t__ sd_event_source_set_enabled (int *,int ) ;
 scalar_t__ sd_event_source_set_io_events (int *,int) ;
 int sd_event_source_unref (int *) ;
 int trivial_hash_ops ;

__attribute__((used)) static int curl_glue_socket_callback(CURLM *curl, curl_socket_t s, int action, void *userdata, void *socketp) {
        sd_event_source *io = socketp;
        CurlGlue *g = userdata;
        uint32_t events = 0;
        int r;

        assert(curl);
        assert(g);

        if (action == CURL_POLL_REMOVE) {
                if (io) {
                        sd_event_source_disable_unref(io);

                        hashmap_remove(g->ios, FD_TO_PTR(s));
                }

                return 0;
        }

        r = hashmap_ensure_allocated(&g->ios, &trivial_hash_ops);
        if (r < 0) {
                log_oom();
                return -1;
        }

        if (action == CURL_POLL_IN)
                events = EPOLLIN;
        else if (action == CURL_POLL_OUT)
                events = EPOLLOUT;
        else if (action == CURL_POLL_INOUT)
                events = EPOLLIN|EPOLLOUT;

        if (io) {
                if (sd_event_source_set_io_events(io, events) < 0)
                        return -1;

                if (sd_event_source_set_enabled(io, SD_EVENT_ON) < 0)
                        return -1;
        } else {
                if (sd_event_add_io(g->event, &io, s, events, curl_glue_on_io, g) < 0)
                        return -1;

                if (curl_multi_assign(g->curl, s, io) != CURLM_OK)
                        return -1;

                (void) sd_event_source_set_description(io, "curl-io");

                r = hashmap_put(g->ios, FD_TO_PTR(s), io);
                if (r < 0) {
                        log_oom();
                        sd_event_source_unref(io);
                        return -1;
                }
        }

        return 0;
}
