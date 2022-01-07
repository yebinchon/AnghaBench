
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* group; TYPE_1__* user; } ;
struct TYPE_13__ {int stdin_fd; int stdout_fd; int stderr_fd; } ;
struct TYPE_12__ {int netns_storage_socket; } ;
struct TYPE_11__ {int storage_socket; } ;
struct TYPE_10__ {int storage_socket; } ;
typedef TYPE_3__ ExecRuntime ;
typedef TYPE_4__ ExecParameters ;
typedef TYPE_5__ DynamicCreds ;


 int append_socket_pair (int*,size_t*,int ) ;
 int assert (TYPE_4__ const*) ;
 int close_all_fds (int*,size_t) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int close_remaining_fds(
                const ExecParameters *params,
                const ExecRuntime *runtime,
                const DynamicCreds *dcreds,
                int user_lookup_fd,
                int socket_fd,
                int exec_fd,
                int *fds, size_t n_fds) {

        size_t n_dont_close = 0;
        int dont_close[n_fds + 12];

        assert(params);

        if (params->stdin_fd >= 0)
                dont_close[n_dont_close++] = params->stdin_fd;
        if (params->stdout_fd >= 0)
                dont_close[n_dont_close++] = params->stdout_fd;
        if (params->stderr_fd >= 0)
                dont_close[n_dont_close++] = params->stderr_fd;

        if (socket_fd >= 0)
                dont_close[n_dont_close++] = socket_fd;
        if (exec_fd >= 0)
                dont_close[n_dont_close++] = exec_fd;
        if (n_fds > 0) {
                memcpy(dont_close + n_dont_close, fds, sizeof(int) * n_fds);
                n_dont_close += n_fds;
        }

        if (runtime)
                append_socket_pair(dont_close, &n_dont_close, runtime->netns_storage_socket);

        if (dcreds) {
                if (dcreds->user)
                        append_socket_pair(dont_close, &n_dont_close, dcreds->user->storage_socket);
                if (dcreds->group)
                        append_socket_pair(dont_close, &n_dont_close, dcreds->group->storage_socket);
        }

        if (user_lookup_fd >= 0)
                dont_close[n_dont_close++] = user_lookup_fd;

        return close_all_fds(dont_close, n_dont_close);
}
