
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int blocks; int * opaque; int ssrc; } ;
typedef TYPE_2__ rtp_source_t ;
struct TYPE_9__ {unsigned int ptc; TYPE_1__* ptv; } ;
typedef TYPE_3__ rtp_session_t ;
typedef int demux_t ;
struct TYPE_7__ {int (* destroy ) (int *,int ) ;} ;


 int block_ChainRelease (int ) ;
 int free (TYPE_2__*) ;
 int msg_Dbg (int *,char*,int ) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void
rtp_source_destroy (demux_t *demux, const rtp_session_t *session,
                    rtp_source_t *source)
{
    msg_Dbg (demux, "removing RTP source (%08x)", source->ssrc);

    for (unsigned i = 0; i < session->ptc; i++)
        session->ptv[i].destroy (demux, source->opaque[i]);
    block_ChainRelease (source->blocks);
    free (source);
}
