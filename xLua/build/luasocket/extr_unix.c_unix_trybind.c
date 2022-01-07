
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {int sun_len; int sun_family; int sun_path; } ;
typedef TYPE_1__* p_unix ;
typedef int local ;
struct TYPE_3__ {int sock; } ;
typedef int SA ;


 int AF_UNIX ;
 int IO_DONE ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket_bind (int *,int *,int) ;
 int socket_destroy (int *) ;
 char const* socket_strerror (int) ;
 int strcpy (int ,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static const char *unix_trybind(p_unix un, const char *path) {
    struct sockaddr_un local;
    size_t len = strlen(path);
    int err;
    if (len >= sizeof(local.sun_path)) return "path too long";
    memset(&local, 0, sizeof(local));
    strcpy(local.sun_path, path);
    local.sun_family = AF_UNIX;






    err = socket_bind(&un->sock, (SA *) &local,
            sizeof(local.sun_family) + len);

    if (err != IO_DONE) socket_destroy(&un->sock);
    return socket_strerror(err);
}
