
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_14__ {int nack_type; TYPE_1__* flow; int p_fifo; } ;
typedef TYPE_3__ stream_sys_t ;
struct TYPE_15__ {scalar_t__ i_buffer; } ;
typedef TYPE_4__ block_t ;
struct TYPE_12__ {int fd_nack; } ;



 TYPE_4__* block_FifoGet (int ) ;
 int block_Release (TYPE_4__*) ;
 int msg_Dbg (TYPE_2__*,char*,int) ;
 int send_bbnack (TYPE_2__*,int ,TYPE_4__*,int) ;
 int send_rbnack (TYPE_2__*,int ,TYPE_4__*,int) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *rist_thread(void *data)
{
    stream_t *p_access = data;
    stream_sys_t *p_sys = p_access->p_sys;



    for (;;) {
        block_t *pkt_nacks = block_FifoGet(p_sys->p_fifo);

        int canc = vlc_savecancel();


        uint16_t nack_count = (uint16_t)pkt_nacks->i_buffer/2;
        switch(p_sys->nack_type) {
            case 128:
                send_bbnack(p_access, p_sys->flow->fd_nack, pkt_nacks, nack_count);
                break;

            default:
                send_rbnack(p_access, p_sys->flow->fd_nack, pkt_nacks, nack_count);
        }

        if (nack_count > 1)
            msg_Dbg(p_access, "Sent %u NACKs !!!", nack_count);
        block_Release(pkt_nacks);

        vlc_restorecancel (canc);
    }

    return ((void*)0);
}
