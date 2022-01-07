
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 scalar_t__ SocksHandshakeTCP (int *,int,int,char*,char*,char const*,int) ;
 int atoi (char*) ;
 int free (char*) ;
 int msg_Dbg (int *,char*,char const*,int,...) ;
 int msg_Err (int *,char*) ;
 int net_Close (int) ;
 int net_Connect (int *,char const*,int,int ,int ) ;
 char* strchr (char*,char) ;
 char* var_InheritString (int *,char*) ;

int (net_ConnectTCP)(vlc_object_t *obj, const char *host, int serv)
{
    const char *realhost;
    int realserv;

    char *socks = var_InheritString(obj, "socks");
    if (socks != ((void*)0))
    {
        realhost = socks;

        char *p = strchr(socks, ':');
        if (p != ((void*)0))
        {
            *(p++) = '\0';
            realserv = atoi(p);
        }
        else
            realserv = 1080;

        msg_Dbg(obj, "net: connecting to %s port %d (SOCKS) "
                "for %s port %d", realhost, realserv, host, serv);
    }
    else
    {
        msg_Dbg(obj, "net: connecting to %s port %d", host, serv);
        realhost = host;
        realserv = serv;
    }

    int fd = net_Connect(obj, realhost, realserv, SOCK_STREAM, IPPROTO_TCP);

    if (socks != ((void*)0) && fd != -1)
    {

        char *user = var_InheritString(obj, "socks-user");
        char *pwd = var_InheritString(obj, "socks-pwd");

        if (SocksHandshakeTCP(obj, fd, 5, user, pwd, host, serv))
        {
            msg_Err(obj, "SOCKS handshake failed");
            net_Close(fd);
            fd = -1;
        }

        free(pwd);
        free(user);
    }

    return fd;
}
