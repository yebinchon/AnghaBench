
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int fd; int origlen; int thread; int * first; scalar_t__ session_count; int wait; int lock; int interval; int orig; int group; } ;
typedef TYPE_1__ sap_address_t ;


 int IPPORT_SAP ;
 int RunThread ;
 int VLC_THREAD_PRIORITY_LOW ;
 int free (TYPE_1__*) ;
 int getsockname (int,struct sockaddr*,int*) ;
 TYPE_1__* malloc (int) ;
 int msg_Err (int *,char*) ;
 int net_Close (int) ;
 int net_ConnectUDP (int *,char const*,int ,int) ;
 int strlcpy (int ,char const*,int) ;
 int var_CreateGetInteger (int *,char*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static sap_address_t *AddressCreate (vlc_object_t *obj, const char *group)
{
    int fd = net_ConnectUDP (obj, group, IPPORT_SAP, 255);
    if (fd == -1)
        return ((void*)0);

    sap_address_t *addr = malloc (sizeof (*addr));
    if (addr == ((void*)0))
    {
        net_Close (fd);
        return ((void*)0);
    }

    strlcpy (addr->group, group, sizeof (addr->group));
    addr->fd = fd;
    addr->origlen = sizeof (addr->orig);
    getsockname (fd, (struct sockaddr *)&addr->orig, &addr->origlen);

    addr->interval = var_CreateGetInteger (obj, "sap-interval");
    vlc_mutex_init (&addr->lock);
    vlc_cond_init (&addr->wait);
    addr->session_count = 0;
    addr->first = ((void*)0);

    if (vlc_clone (&addr->thread, RunThread, addr, VLC_THREAD_PRIORITY_LOW))
    {
        msg_Err (obj, "unable to spawn SAP announce thread");
        net_Close (fd);
        free (addr);
        return ((void*)0);
    }
    return addr;
}
