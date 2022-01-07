
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Socket ;


 int SOCKET_FAILURE_RESOURCES ;
 int SOCKET_LISTENING ;
 int UNIT (int *) ;
 int assert (int *) ;
 int log_unit_warning_errno (int ,int,char*) ;
 int socket_enter_stop_pre (int *,int ) ;
 int socket_set_state (int *,int ) ;
 int socket_watch_fds (int *) ;

__attribute__((used)) static void socket_enter_listening(Socket *s) {
        int r;
        assert(s);

        r = socket_watch_fds(s);
        if (r < 0) {
                log_unit_warning_errno(UNIT(s), r, "Failed to watch sockets: %m");
                goto fail;
        }

        socket_set_state(s, SOCKET_LISTENING);
        return;

fail:
        socket_enter_stop_pre(s, SOCKET_FAILURE_RESOURCES);
}
