
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int srcc; struct TYPE_6__* ptv; struct TYPE_6__* srcv; } ;
typedef TYPE_1__ rtp_session_t ;
typedef int demux_t ;


 int free (TYPE_1__*) ;
 int rtp_source_destroy (int *,TYPE_1__*,TYPE_1__) ;

void rtp_session_destroy (demux_t *demux, rtp_session_t *session)
{
    for (unsigned i = 0; i < session->srcc; i++)
        rtp_source_destroy (demux, session, session->srcv[i]);

    free (session->srcv);
    free (session->ptv);
    free (session);
    (void)demux;
}
