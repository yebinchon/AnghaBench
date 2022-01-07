
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {struct TYPE_7__* data; struct TYPE_7__* next; } ;
typedef TYPE_1__ session_descriptor_t ;
struct TYPE_8__ {int lock; int wait; int session_count; TYPE_1__* first; struct TYPE_8__* next; } ;
typedef TYPE_2__ sap_address_t ;


 int AddressDestroy (TYPE_2__*) ;
 int assert (int ) ;
 int free (TYPE_1__*) ;
 int msg_Dbg (int *,char*) ;
 TYPE_2__* sap_addrs ;
 int sap_mutex ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void sout_AnnounceUnRegister (vlc_object_t *obj, session_descriptor_t *session)
{
    sap_address_t *addr, **paddr;
    session_descriptor_t **psession;

    msg_Dbg (obj, "removing SAP session");
    vlc_mutex_lock (&sap_mutex);
    paddr = &sap_addrs;
    for (;;)
    {
        addr = *paddr;
        assert (addr != ((void*)0));

        psession = &addr->first;
        vlc_mutex_lock (&addr->lock);
        while (*psession != ((void*)0))
        {
            if (*psession == session)
                goto found;
            psession = &(*psession)->next;
        }
        vlc_mutex_unlock (&addr->lock);
        paddr = &addr->next;
    }

found:
    *psession = session->next;

    if (addr->first == ((void*)0))

        *paddr = addr->next;
    vlc_mutex_unlock (&sap_mutex);

    if (addr->first == ((void*)0))
    {

        vlc_mutex_unlock (&addr->lock);
        AddressDestroy (addr);
    }
    else
    {
        addr->session_count--;
        vlc_cond_signal (&addr->wait);
        vlc_mutex_unlock (&addr->lock);
    }

    free(session->data);
    free(session);
}
