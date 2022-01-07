
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_un {int sun_len; int sun_family; int sun_path; } ;
typedef int remote ;
typedef TYPE_1__* p_unix ;
struct TYPE_3__ {int sock; int tm; } ;
typedef int SA ;


 int AF_UNIX ;
 int IO_DONE ;
 int memset (struct sockaddr_un*,int ,int) ;
 int socket_connect (int *,int *,int,int *) ;
 int socket_destroy (int *) ;
 char const* socket_strerror (int) ;
 int strcpy (int ,char const*) ;
 size_t strlen (char const*) ;
 int timeout_markstart (int *) ;

__attribute__((used)) static const char *unix_tryconnect(p_unix un, const char *path)
{
    struct sockaddr_un remote;
    int err;
    size_t len = strlen(path);
    if (len >= sizeof(remote.sun_path)) return "path too long";
    memset(&remote, 0, sizeof(remote));
    strcpy(remote.sun_path, path);
    remote.sun_family = AF_UNIX;
    timeout_markstart(&un->tm);





    err = socket_connect(&un->sock, (SA *) &remote,
            sizeof(remote.sun_family) + len, &un->tm);

    if (err != IO_DONE) socket_destroy(&un->sock);
    return socket_strerror(err);
}
