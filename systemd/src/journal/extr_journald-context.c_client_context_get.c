
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
typedef int pid_t ;
typedef int Server ;
typedef int ClientContext ;


 int client_context_get_internal (int *,int ,struct ucred const*,char const*,size_t,char const*,int,int **) ;

int client_context_get(
                Server *s,
                pid_t pid,
                const struct ucred *ucred,
                const char *label, size_t label_len,
                const char *unit_id,
                ClientContext **ret) {

        return client_context_get_internal(s, pid, ucred, label, label_len, unit_id, 0, ret);
}
