
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {scalar_t__ client_fd; int client_event_source; TYPE_1__* context; int sa_family; } ;
typedef struct sockaddr* socklen_t ;
struct TYPE_2__ {int event; } ;
typedef struct sockaddr Connection ;


 int EINPROGRESS ;
 int EPOLLOUT ;
 int SD_EVENT_ONESHOT ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_STREAM ;
 int assert (struct sockaddr*) ;
 int connect (scalar_t__,struct sockaddr*,struct sockaddr*) ;
 int connect_cb ;
 int connection_complete (struct sockaddr*) ;
 int connection_free (struct sockaddr*) ;
 int errno ;
 int log_error_errno (int,char*) ;
 int sd_event_add_io (int ,int *,scalar_t__,int ,int ,struct sockaddr*) ;
 int sd_event_source_set_enabled (int ,int ) ;
 scalar_t__ socket (int ,int,int ) ;

__attribute__((used)) static int connection_start(Connection *c, struct sockaddr *sa, socklen_t salen) {
        int r;

        assert(c);
        assert(sa);
        assert(salen);

        c->client_fd = socket(sa->sa_family, SOCK_STREAM|SOCK_NONBLOCK|SOCK_CLOEXEC, 0);
        if (c->client_fd < 0) {
                log_error_errno(errno, "Failed to get remote socket: %m");
                goto fail;
        }

        r = connect(c->client_fd, sa, salen);
        if (r < 0) {
                if (errno == EINPROGRESS) {
                        r = sd_event_add_io(c->context->event, &c->client_event_source, c->client_fd, EPOLLOUT, connect_cb, c);
                        if (r < 0) {
                                log_error_errno(r, "Failed to add connection socket: %m");
                                goto fail;
                        }

                        r = sd_event_source_set_enabled(c->client_event_source, SD_EVENT_ONESHOT);
                        if (r < 0) {
                                log_error_errno(r, "Failed to enable oneshot event source: %m");
                                goto fail;
                        }
                } else {
                        log_error_errno(errno, "Failed to connect to remote host: %m");
                        goto fail;
                }
        } else {
                r = connection_complete(c);
                if (r < 0)
                        goto fail;
        }

        return 0;

fail:
        connection_free(c);
        return 0;
}
