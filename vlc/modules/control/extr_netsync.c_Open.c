
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_12__ {int fd; int timeout; int playlist; int * input; scalar_t__ is_master; } ;
typedef TYPE_2__ intf_sys_t ;


 int NETSYNC_PORT ;
 int PlaylistEvent ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int free (char*) ;
 TYPE_2__* malloc (int) ;
 int msg_Err (TYPE_1__*,char*) ;
 int net_Close (int) ;
 int net_ConnectUDP (int ,char*,int ,int) ;
 int net_ListenUDP1 (int ,int *,int ) ;
 int pl_Get (TYPE_1__*) ;
 int var_AddCallback (int ,char*,int ,TYPE_1__*) ;
 scalar_t__ var_InheritBool (TYPE_1__*,char*) ;
 int var_InheritInteger (TYPE_1__*,char*) ;
 char* var_InheritString (TYPE_1__*,char*) ;

__attribute__((used)) static int Open(vlc_object_t *object)
{
    intf_thread_t *intf = (intf_thread_t*)object;
    intf_sys_t *sys;
    int fd;

    if (!var_InheritBool(intf, "netsync-master")) {
        char *psz_master = var_InheritString(intf, "netsync-master-ip");
        if (psz_master == ((void*)0)) {
            msg_Err(intf, "master address not specified");
            return VLC_EGENERIC;
        }
        fd = net_ConnectUDP(VLC_OBJECT(intf), psz_master, NETSYNC_PORT, -1);
        free(psz_master);
    } else {
        fd = net_ListenUDP1(VLC_OBJECT(intf), ((void*)0), NETSYNC_PORT);
    }

    if (fd == -1) {
        msg_Err(intf, "Netsync socket failure");
        return VLC_EGENERIC;
    }

    intf->p_sys = sys = malloc(sizeof(*sys));
    if (!sys) {
        net_Close(fd);
        return VLC_ENOMEM;
    }

    sys->fd = fd;
    sys->is_master = var_InheritBool(intf, "netsync-master");
    sys->timeout = var_InheritInteger(intf, "netsync-timeout");
    if (sys->timeout < 500)
        sys->timeout = 500;
    sys->playlist = pl_Get(intf);
    sys->input = ((void*)0);

    var_AddCallback(sys->playlist, "input-current", PlaylistEvent, intf);
    return VLC_SUCCESS;
}
