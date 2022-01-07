
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int curl; } ;
typedef TYPE_1__ sd_event_source ;
typedef TYPE_1__ CurlGlue ;


 scalar_t__ CURLM_OK ;
 int CURL_POLL_IN ;
 int CURL_POLL_INOUT ;
 int CURL_POLL_OUT ;
 int EINVAL ;
 int EPOLLIN ;
 int EPOLLOUT ;
 scalar_t__ FLAGS_SET (int,int) ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (TYPE_1__*) ;
 int curl_glue_check_finished (TYPE_1__*) ;
 scalar_t__ curl_multi_socket_action (int ,int,int,int*) ;
 int log_debug_errno (int ,char*) ;

__attribute__((used)) static int curl_glue_on_io(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        CurlGlue *g = userdata;
        int action, k = 0;

        assert(s);
        assert(g);

        if (FLAGS_SET(revents, EPOLLIN | EPOLLOUT))
                action = CURL_POLL_INOUT;
        else if (revents & EPOLLIN)
                action = CURL_POLL_IN;
        else if (revents & EPOLLOUT)
                action = CURL_POLL_OUT;
        else
                action = 0;

        if (curl_multi_socket_action(g->curl, fd, action, &k) != CURLM_OK)
                return log_debug_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Failed to propagate IO event.");

        curl_glue_check_finished(g);
        return 0;
}
