
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * blocks; } ;
typedef TYPE_1__ rtp_source_t ;
struct TYPE_7__ {unsigned int srcc; TYPE_1__** srcv; } ;
typedef TYPE_2__ rtp_session_t ;
typedef int demux_t ;
typedef int block_t ;


 int rtp_decode (int *,TYPE_2__ const*,TYPE_1__*) ;

void rtp_dequeue_force (demux_t *demux, const rtp_session_t *session)
{
    for (unsigned i = 0, max = session->srcc; i < max; i++)
    {
        rtp_source_t *src = session->srcv[i];
        block_t *block;

        while (((block = src->blocks)) != ((void*)0))
            rtp_decode (demux, session, src);
    }
}
