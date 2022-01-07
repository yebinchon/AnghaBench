
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int stream_t ;
typedef int remote_name ;
typedef int net_resource ;
struct TYPE_4__ {int * lpRemoteName; int dwType; } ;
typedef TYPE_1__ NETRESOURCE ;




 int MAX_PATH ;

 int RESOURCETYPE_DISK ;
 int * ToWide (char const*) ;
 int WNetAddConnection2 (TYPE_1__*,int *,int *,int ) ;
 int free (int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int msg_Dbg (int *,char const*,char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void Win32AddConnection(stream_t *access, const char *server,
                               const char *share, const char *user,
                               const char *pwd)
{
    NETRESOURCE net_resource;
    char remote_name[MAX_PATH];

    memset(&net_resource, 0, sizeof (net_resource));
    net_resource.dwType = RESOURCETYPE_DISK;

    snprintf(remote_name, sizeof (remote_name), "\\\\%s\\%s", server,
             (share != ((void*)0)) ? share + 1 : "");


    char *delim = strchr(remote_name, '/');
    if (delim != ((void*)0))
        *delim = '\0';

    const char *msg;
    net_resource.lpRemoteName = ToWide(remote_name);

    wchar_t *wpwd = pwd ? ToWide(pwd) : ((void*)0);
    wchar_t *wuser = user ? ToWide(user) : ((void*)0);

    switch (WNetAddConnection2(&net_resource, wpwd, wuser, 0))
    {
        case 128:
            msg = "connected to %s";
            break;
        case 130:
        case 129:
            msg = "already connected to %s";
            break;
        default:
            msg = "failed to connect to %s";
    }
    free(net_resource.lpRemoteName);
    free(wpwd);
    free(wuser);
    msg_Dbg(access, msg, remote_name);
}
