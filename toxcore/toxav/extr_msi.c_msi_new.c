
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * messenger; int mutex; } ;
typedef int Messenger ;
typedef TYPE_1__ MSISession ;


 int LOGGER_DEBUG (char*,TYPE_1__*) ;
 int LOGGER_ERROR (char*) ;
 TYPE_1__* calloc (int,int) ;
 scalar_t__ create_recursive_mutex (int ) ;
 int free (TYPE_1__*) ;
 int handle_msi_packet ;
 int m_callback_connectionstatus_internal_av (int *,int ,TYPE_1__*) ;
 int m_callback_msi_packet (int *,int ,TYPE_1__*) ;
 int on_peer_status ;

MSISession *msi_new (Messenger *m)
{
    if (m == ((void*)0)) {
        LOGGER_ERROR("Could not init session on empty messenger!");
        return ((void*)0);
    }

    MSISession *retu = calloc (sizeof (MSISession), 1);

    if (retu == ((void*)0)) {
        LOGGER_ERROR("Allocation failed! Program might misbehave!");
        return ((void*)0);
    }

    if (create_recursive_mutex(retu->mutex) != 0) {
        LOGGER_ERROR("Failed to init mutex! Program might misbehave");
        free(retu);
        return ((void*)0);
    }

    retu->messenger = m;

    m_callback_msi_packet(m, handle_msi_packet, retu);


    m_callback_connectionstatus_internal_av(m, on_peer_status, retu);

    LOGGER_DEBUG("New msi session: %p ", retu);
    return retu;
}
