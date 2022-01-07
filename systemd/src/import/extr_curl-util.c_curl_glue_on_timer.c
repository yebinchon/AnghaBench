
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int curl; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ CurlGlue ;


 scalar_t__ CURLM_OK ;
 int CURL_SOCKET_TIMEOUT ;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int curl_glue_check_finished (TYPE_1__*) ;
 scalar_t__ curl_multi_socket_action (int ,int ,int ,int*) ;
 int log_debug_errno (int ,char*) ;

__attribute__((used)) static int curl_glue_on_timer(sd_event_source *s, uint64_t usec, void *userdata) {
        CurlGlue *g = userdata;
        int k = 0;

        assert(s);
        assert(g);

        if (curl_multi_socket_action(g->curl, CURL_SOCKET_TIMEOUT, 0, &k) != CURLM_OK)
                return log_debug_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Failed to propagate timeout.");

        curl_glue_check_finished(g);
        return 0;
}
