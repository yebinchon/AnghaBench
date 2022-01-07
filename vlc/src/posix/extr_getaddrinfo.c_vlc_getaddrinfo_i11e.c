
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_thread_t ;
struct vlc_gai_req {char const* name; char* service; int error; struct addrinfo* result; int done; struct addrinfo const* hints; } ;
struct addrinfo {int dummy; } ;
typedef int portbuf ;


 int EAI_NONAME ;
 int EAI_SYSTEM ;
 int VLC_THREAD_PRIORITY_LOW ;
 scalar_t__ snprintf (char*,int,char*,unsigned int) ;
 int vlc_cancel (int ) ;
 scalar_t__ vlc_clone (int *,int ,struct vlc_gai_req*,int ) ;
 int vlc_gai_thread ;
 int vlc_join (int ,int *) ;
 int vlc_sem_destroy (int *) ;
 int vlc_sem_init (int *,int ) ;
 int vlc_sem_wait_i11e (int *) ;

int vlc_getaddrinfo_i11e(const char *name, unsigned port,
                         const struct addrinfo *hints,
                         struct addrinfo **res)
{
    struct vlc_gai_req req =
    {
        .name = name,
        .service = ((void*)0),
        .hints = hints,
    };
    char portbuf[6];
    vlc_thread_t th;

    if (port != 0)
    {
        if ((size_t)snprintf(portbuf, sizeof (portbuf), "%u",
                             port) >= sizeof (portbuf))
            return EAI_NONAME;

        req.service = portbuf;
    }

    vlc_sem_init(&req.done, 0);

    if (vlc_clone(&th, vlc_gai_thread, &req, VLC_THREAD_PRIORITY_LOW))
    {
        vlc_sem_destroy(&req.done);
        return EAI_SYSTEM;
    }

    vlc_sem_wait_i11e(&req.done);

    vlc_cancel(th);
    vlc_join(th, ((void*)0));
    vlc_sem_destroy(&req.done);

    *res = req.result;
    return req.error;
}
